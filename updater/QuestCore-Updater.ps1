# QuestCore Data Pack Updater — installs/updates QuestCore_Data from GitHub Releases.
# Double-click "Run Updater.bat" or:
#   powershell -ExecutionPolicy Bypass -File QuestCore-Updater.ps1
#   powershell -ExecutionPolicy Bypass -File QuestCore-Updater.ps1 -Watch -WatchMinutes 360

param(
	[string]$WoWRoot,
	[ValidateSet("Auto", "ClassicEra", "Retail", "All")]
	[string]$Flavor = "Auto",
	[switch]$Silent,
	[switch]$Watch,
	[int]$WatchMinutes = 360,
	[switch]$Tray,
	[switch]$NoGui
)

$ErrorActionPreference = "Stop"
$Repo = "3kage/quest-core"
$ApiBase = "https://api.github.com/repos/$Repo"
$UserAgent = "QuestCore-Updater/1.0"

function Write-Log([string]$Message, [string]$Level = "Info") {
	$line = "[$(Get-Date -Format 'HH:mm:ss')] $Message"
	switch ($Level) {
		"Err" { Write-Host $line -ForegroundColor Red }
		"Ok"  { Write-Host $line -ForegroundColor Green }
		"Warn"{ Write-Host $line -ForegroundColor Yellow }
		default { Write-Host $line }
	}
	if ($script:LogBox) {
		$script:LogBox.AppendText("$line`r`n")
		$script:LogBox.SelectionStart = $script:LogBox.Text.Length
		$script:LogBox.ScrollToCaret()
		[System.Windows.Forms.Application]::DoEvents()
	}
}

function Invoke-GitHubApi([string]$Path) {
	$uri = if ($Path -match '^https?://') { $Path } else { "$ApiBase/$Path" }
	return Invoke-RestMethod -Uri $uri -Headers @{ "User-Agent" = $UserAgent }
}

function Get-VersionFromToc([string]$TocPath) {
	if (-not (Test-Path -LiteralPath $TocPath)) { return $null }
	foreach ($line in [System.IO.File]::ReadAllLines($TocPath)) {
		if ($line -match '^## Version:\s*(.+)$') {
			return $Matches[1].Trim()
		}
	}
	return $null
}

function Find-WoWAddOnsRoots {
	$candidates = [System.Collections.Generic.List[string]]::new()

	if ($WoWRoot) {
		$parent = Split-Path $WoWRoot -Parent
		if (Test-Path (Join-Path $WoWRoot "Interface\AddOns")) {
			$candidates.Add((Join-Path $WoWRoot "Interface\AddOns"))
		}
		if ($parent -and (Test-Path (Join-Path $parent "Interface\AddOns"))) {
			$candidates.Add((Join-Path $parent "Interface\AddOns"))
		}
	}

	$searchRoots = @(
		"${env:ProgramFiles(x86)}\World of Warcraft",
		"$env:ProgramFiles\World of Warcraft",
		"$env:LOCALAPPDATA\Programs\World of Warcraft",
		"D:\Games\World of Warcraft",
		"E:\Games\World of Warcraft"
	) | Select-Object -Unique

	foreach ($root in $searchRoots) {
		if (-not (Test-Path -LiteralPath $root)) { continue }
		Get-ChildItem -LiteralPath $root -Directory -ErrorAction SilentlyContinue | ForEach-Object {
			$addOns = Join-Path $_.FullName "Interface\AddOns"
			if ((Test-Path $addOns) -and (Test-Path (Join-Path $addOns "QuestCore"))) {
				$candidates.Add($addOns)
			}
		}
	}

	return $candidates | Select-Object -Unique
}

function Get-FlavorForAddOns([string]$AddOnsPath) {
	$parent = Split-Path (Split-Path $AddOnsPath -Parent) -Parent
	$name = Split-Path $parent -Leaf
	switch -Regex ($name) {
		'_classic_era_|_classic_era$' { return "ClassicEra" }
		'_retail_|_retail$'           { return "Retail" }
		'_classic_|_anniversary_'     { return "ClassicEra" }
		default                       { return "Retail" }
	}
}

function Get-AssetNameForFlavor([string]$FlavorName) {
	switch ($FlavorName) {
		"ClassicEra" { return "QuestCore_Data_Vanilla" }
		"Retail"     { return "QuestCore_Data" }
		default      { return "QuestCore_Data" }
	}
}

function Get-LatestDataPackAsset([string]$FlavorName) {
	$release = Invoke-GitHubApi "releases/latest"
	$prefix = Get-AssetNameForFlavor $FlavorName
	$asset = $release.assets | Where-Object {
		$_.name -like "$prefix*.zip" -and $_.name -notlike "*Updater*"
	} | Select-Object -First 1
	if (-not $asset) {
		throw "No release asset matching '$prefix*.zip' in $($release.tag_name)"
	}
	return [PSCustomObject]@{
		Tag     = $release.tag_name
		Name    = $asset.name
		Url     = $asset.browser_download_url
		Version = if ($asset.name -match '(\d+\.\d+\.\d+)') { $Matches[1] } else { $release.tag_name -replace '^v', '' }
	}
}

function Install-DataPackZip([string]$ZipPath, [string]$AddOnsPath) {
	$dest = Join-Path $AddOnsPath "QuestCore_Data"
	$backup = Join-Path $AddOnsPath ("QuestCore_Data.backup." + (Get-Date -Format "yyyyMMdd-HHmmss"))
	$temp = Join-Path ([System.IO.Path]::GetTempPath()) ("QuestCore_Data_" + [guid]::NewGuid().ToString("N"))

	if (Test-Path -LiteralPath $dest) {
		Write-Log "Backing up existing data pack to $(Split-Path $backup -Leaf)"
		Move-Item -LiteralPath $dest -Destination $backup -Force
	}

	New-Item -ItemType Directory -Force -Path $temp | Out-Null
	try {
		Expand-Archive -LiteralPath $ZipPath -DestinationPath $temp -Force
		$inner = Join-Path $temp "QuestCore_Data"
		if (Test-Path -LiteralPath $inner) {
			Move-Item -LiteralPath $inner -Destination $dest -Force
		}
		else {
			# Zip root is the addon folder contents
			New-Item -ItemType Directory -Force -Path $dest | Out-Null
			Get-ChildItem -LiteralPath $temp | Move-Item -Destination $dest -Force
		}
		Write-Log "Installed to $dest" "Ok"
	}
	finally {
		if (Test-Path -LiteralPath $temp) { Remove-Item -LiteralPath $temp -Recurse -Force -ErrorAction SilentlyContinue }
	}
}

function Update-AddOnsPath([string]$AddOnsPath, [string]$FlavorName) {
	$asset = Get-LatestDataPackAsset $FlavorName
	$installedVer = $null
	$tocVanilla = Join-Path $AddOnsPath "QuestCore_Data\QuestCore_Data_Vanilla.toc"
	$tocRetail = Join-Path $AddOnsPath "QuestCore_Data\QuestCore_Data.toc"
	if (Test-Path $tocVanilla) { $installedVer = Get-VersionFromToc $tocVanilla }
	elseif (Test-Path $tocRetail) { $installedVer = Get-VersionFromToc $tocRetail }

	Write-Log "Target: $AddOnsPath ($FlavorName)"
	if ($installedVer) {
		Write-Log "Installed data pack: v$installedVer | Latest: v$asset.Version ($asset.Name)"
		if ($installedVer -eq $asset.Version) {
			Write-Log "Already up to date." "Ok"
			return $true
		}
	}
	else {
		Write-Log "No data pack found — will install v$asset.Version ($asset.Name)"
	}

	$zipFile = Join-Path $env:TEMP $asset.Name
	Write-Log "Downloading $($asset.Url)"
	Invoke-WebRequest -Uri $asset.Url -OutFile $zipFile -UseBasicParsing -Headers @{ "User-Agent" = $UserAgent }
	Install-DataPackZip -ZipPath $zipFile -AddOnsPath $AddOnsPath
	Remove-Item -LiteralPath $zipFile -Force -ErrorAction SilentlyContinue
	Write-Log "Update complete. /reload in WoW." "Ok"
	return $true
}

function Invoke-UpdateRun {
	$roots = @(Find-WoWAddOnsRoots)
	if ($roots.Count -eq 0) {
		Write-Log "QuestCore not found. Install the engine from CurseForge first, or pass -WoWRoot." "Err"
		return $false
	}

	$ok = $true
	foreach ($addOns in $roots) {
		$fl = if ($Flavor -eq "Auto") { Get-FlavorForAddOns $addOns } else { $Flavor }
		try { Update-AddOnsPath -AddOnsPath $addOns -FlavorName $fl | Out-Null }
		catch { Write-Log $_.Exception.Message "Err"; $ok = $false }
	}
	return $ok
}

function Initialize-TrayIcon([System.Windows.Forms.Form]$Form) {
	$script:NotifyIcon = New-Object System.Windows.Forms.NotifyIcon
	$script:NotifyIcon.Icon = [System.Drawing.SystemIcons]::Application
	$script:NotifyIcon.Text = "QuestCore Data Pack Updater"
	$script:NotifyIcon.Visible = $true

	$menu = New-Object System.Windows.Forms.ContextMenuStrip
	$null = $menu.Items.Add("Update now", $null, {
		Write-Log "Manual update from tray..."
		[void](Invoke-UpdateRun)
	})
	$null = $menu.Items.Add("Show window", $null, {
		$Form.Show()
		$Form.WindowState = [System.Windows.Forms.FormWindowState]::Normal
		$Form.Activate()
	})
	$null = $menu.Items.Add("-")
	$null = $menu.Items.Add("Exit", $null, {
		$script:ForceExit = $true
		if ($script:WatchTimer) { $script:WatchTimer.Stop(); $script:WatchTimer.Dispose() }
		if ($script:NotifyIcon) { $script:NotifyIcon.Visible = $false; $script:NotifyIcon.Dispose() }
		$Form.Close()
		[System.Windows.Forms.Application]::Exit()
	})
	$script:NotifyIcon.ContextMenuStrip = $menu
	$script:NotifyIcon.Add_DoubleClick({
		$Form.Show()
		$Form.WindowState = [System.Windows.Forms.FormWindowState]::Normal
		$Form.Activate()
	})
}

function Show-UpdaterGui {
	Add-Type -AssemblyName System.Windows.Forms
	Add-Type -AssemblyName System.Drawing

	$form = New-Object System.Windows.Forms.Form
	$form.Text = "QuestCore Data Pack Updater"
	$form.Size = New-Object System.Drawing.Size(520, 420)
	$form.StartPosition = "CenterScreen"
	$form.FormBorderStyle = "FixedDialog"
	$form.MaximizeBox = $false
	$form.ShowInTaskbar = -not [bool]$Tray

	$script:WatchTimer = $null
	$script:UseTray = [bool]$Tray -or [bool]$Watch

	$intro = New-Object System.Windows.Forms.Label
	$intro.Location = New-Object System.Drawing.Point(12, 12)
	$intro.Size = New-Object System.Drawing.Size(480, 48)
	$intro.Text = "Installs or updates guide databases (QuestCore_Data) from GitHub.`r`nEngine updates stay on CurseForge."
	$form.Controls.Add($intro)

	$script:LogBox = New-Object System.Windows.Forms.TextBox
	$script:LogBox.Location = New-Object System.Drawing.Point(12, 68)
	$script:LogBox.Size = New-Object System.Drawing.Size(480, 240)
	$script:LogBox.Multiline = $true
	$script:LogBox.ReadOnly = $true
	$script:LogBox.ScrollBars = "Vertical"
	$script:LogBox.Font = New-Object System.Drawing.Font("Consolas", 9)
	$form.Controls.Add($script:LogBox)

	$watchChk = New-Object System.Windows.Forms.CheckBox
	$watchChk.Location = New-Object System.Drawing.Point(12, 318)
	$watchChk.Size = New-Object System.Drawing.Size(320, 24)
	$watchChk.Text = "Check for updates every $WatchMinutes minutes (background)"
	$watchChk.Checked = [bool]$Watch
	$form.Controls.Add($watchChk)

	$btnUpdate = New-Object System.Windows.Forms.Button
	$btnUpdate.Location = New-Object System.Drawing.Point(12, 348)
	$btnUpdate.Size = New-Object System.Drawing.Size(120, 28)
	$btnUpdate.Text = "Update now"
	$btnUpdate.Add_Click({
		$btnUpdate.Enabled = $false
		try { [void](Invoke-UpdateRun) }
		finally { $btnUpdate.Enabled = $true }
	})
	$form.Controls.Add($btnUpdate)

	$btnClose = New-Object System.Windows.Forms.Button
	$btnClose.Location = New-Object System.Drawing.Point(372, 348)
	$btnClose.Size = New-Object System.Drawing.Size(120, 28)
	$btnClose.Text = "Close"
	$btnClose.Add_Click({
		if ($script:UseTray -and $watchChk.Checked) {
			$form.Hide()
			if ($script:NotifyIcon) {
				$script:NotifyIcon.ShowBalloonTip(4000, "QuestCore", "Updater runs in the tray. Double-click icon to reopen.", [System.Windows.Forms.ToolTipIcon]::Info)
			}
		}
		else {
			$script:ForceExit = $true
			$form.Close()
		}
	})
	$form.Controls.Add($btnClose)

	$form.Add_FormClosing({
		param($sender, $e)
		if ($script:UseTray -and $watchChk.Checked -and -not $script:ForceExit) {
			$e.Cancel = $true
			$form.Hide()
		}
	})

	$form.Add_Shown({
		if ($script:UseTray) {
			Initialize-TrayIcon -Form $form
		}
		$btnUpdate.PerformClick()
		if ($watchChk.Checked) {
			$script:WatchTimer = New-Object System.Windows.Forms.Timer
			$script:WatchTimer.Interval = [Math]::Max(1, $WatchMinutes) * 60 * 1000
			$script:WatchTimer.Add_Tick({
				Write-Log "--- Scheduled check ---"
				[void](Invoke-UpdateRun)
			})
			$script:WatchTimer.Start()
		}
		if ($Tray) {
			$form.Hide()
			if ($script:NotifyIcon) {
				$script:NotifyIcon.ShowBalloonTip(4000, "QuestCore", "Background updater started.", [System.Windows.Forms.ToolTipIcon]::Info)
			}
		}
	})

	$form.Add_FormClosed({
		if ($script:WatchTimer) { $script:WatchTimer.Stop(); $script:WatchTimer.Dispose() }
		if ($script:NotifyIcon) { $script:NotifyIcon.Visible = $false; $script:NotifyIcon.Dispose() }
	})

	[void][System.Windows.Forms.Application]::Run($form)
}

# --- Main ---
$script:ForceExit = $false
if ($Tray -and -not $Watch) { $Watch = $true }
if ($Silent -or $NoGui) {
	$success = Invoke-UpdateRun
	exit $(if ($success) { 0 } else { 1 })
}

if ($Watch -and $NoGui) {
	while ($true) {
		[void](Invoke-UpdateRun)
		Start-Sleep -Seconds ([Math]::Max(1, $WatchMinutes) * 60)
	}
}

try {
	Show-UpdaterGui
}
catch {
	Write-Log "GUI unavailable ($($_.Exception.Message)); running console mode." "Warn"
	[void](Invoke-UpdateRun)
	if ($Watch) {
		while ($true) {
			Start-Sleep -Seconds ([Math]::Max(1, $WatchMinutes) * 60)
			[void](Invoke-UpdateRun)
		}
	}
}
