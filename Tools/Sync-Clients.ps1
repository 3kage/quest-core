# Mirror QuestCore from Retail (source of truth) to other WoW clients.
# Usage:
#   .\Tools\Sync-Clients.ps1           # mirror to all clients
#   .\Tools\Sync-Clients.ps1 -DryRun # show what would change

[CmdletBinding()]
param(
	[switch]$DryRun
)

$ErrorActionPreference = "Stop"

$Source = "D:\Games\World of Warcraft\_retail_\Interface\AddOns\QuestCore"

$Targets = @(
	@{ Name = "TBC (Anniversary)"; Path = "D:\Games\World of Warcraft\_anniversary_\Interface\AddOns\QuestCore" },
	@{ Name = "Mists (Classic)";   Path = "D:\Games\World of Warcraft\_classic_\Interface\AddOns\QuestCore" },
	@{ Name = "Classic Era";       Path = "D:\Games\World of Warcraft\_classic_era_\Interface\AddOns\QuestCore" }
)

if (-not (Test-Path $Source)) {
	throw "Source not found: $Source"
}

$ExcludeDirs = @(".git", ".cursor", "node_modules")

function Sync-Target {
	param(
		[string]$Name,
		[string]$Dest
	)

	$parent = Split-Path $Dest -Parent
	if (-not (Test-Path $parent)) {
		Write-Warning "[$Name] Skipped - parent folder missing: $parent"
		return
	}

	if ($DryRun) {
		Write-Host "[$Name] DRY RUN -> $Dest"
		return
	}

	New-Item -ItemType Directory -Force -Path $Dest | Out-Null

	$xd = ($ExcludeDirs | ForEach-Object { "/XD"; $_ }) -join " "
	$cmd = "robocopy `"$Source`" `"$Dest`" /MIR /NFL /NDL /NJH /NJS /NP /NS /NC $xd"
	Invoke-Expression $cmd | Out-Null
	# robocopy exit codes 0-7 are success/partial success
	if ($LASTEXITCODE -gt 7) {
		throw "[$Name] robocopy failed with exit code $LASTEXITCODE"
	}

	Write-Host "[$Name] Synced -> $Dest"
}

Write-Host "QuestCore sync source: $Source"
foreach ($t in $Targets) {
	Sync-Target -Name $t.Name -Dest $t.Path
}
Write-Host "Done."
