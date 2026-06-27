# Build data pack + updater zips for GitHub Releases.
# Usage: .\scripts\Publish-DataRelease.ps1 [-Version 3.0.1] [-OutDir .\dist]

param(
	[string]$Version = "",
	[string]$OutDir = (Join-Path (Split-Path $PSScriptRoot -Parent) "dist")
)

$ErrorActionPreference = "Stop"
$root = Split-Path $PSScriptRoot -Parent

if ($env:QC_RELEASE_VERSION -and $env:QC_RELEASE_VERSION -ne "") {
	$Version = $env:QC_RELEASE_VERSION
}
if ($Version -eq "") {
	$engineToc = Join-Path $root "QuestCore_Engine_Vanilla.toc"
	if (-not (Test-Path $engineToc)) { $engineToc = Join-Path $root "QuestCore_Vanilla.toc" }
	if (Test-Path $engineToc) {
		$verLine = Select-String -Path $engineToc -Pattern '^## Version:\s*(.+)$' | Select-Object -First 1
		if ($verLine) { $Version = $verLine.Matches[0].Groups[1].Value.Trim() }
	}
}
if ($Version -eq "") { $Version = "3.0.1" }

New-Item -ItemType Directory -Force -Path $OutDir | Out-Null
$dataRoot = Join-Path $OutDir "_build\QuestCore_Data"
if (Test-Path $dataRoot) { Remove-Item $dataRoot -Recurse -Force }

Write-Host "Building data pack into $dataRoot ..."
$dataRoot = & (Join-Path $PSScriptRoot "Build-DataPack.ps1") -Flavor All -OutDir $dataRoot

Get-ChildItem -Path $dataRoot -Filter "*.toc" | ForEach-Object {
	$content = [System.IO.File]::ReadAllText($_.FullName)
	$content = $content -replace '(?m)^## Version:.*$', "## Version: $Version"
	[System.IO.File]::WriteAllText($_.FullName, $content, [System.Text.UTF8Encoding]::new($false))
}

function New-ReleaseZip([string]$SourcePath, [string]$ZipPath) {
	if (Test-Path $ZipPath) { Remove-Item $ZipPath -Force }
	Compress-Archive -Path $SourcePath -DestinationPath $ZipPath -CompressionLevel Optimal
	Write-Host "Created: $ZipPath"
}

$vanillaZip = Join-Path $OutDir "QuestCore_Data_Vanilla-$Version.zip"
$retailZip = Join-Path $OutDir "QuestCore_Data-$Version.zip"
$updaterZip = Join-Path $OutDir "QuestCore-Updater.zip"

$vanillaStage = Join-Path $OutDir "_stage_vanilla"
$retailStage = Join-Path $OutDir "_stage_retail"
if (Test-Path $vanillaStage) { Remove-Item $vanillaStage -Recurse -Force }
if (Test-Path $retailStage) { Remove-Item $retailStage -Recurse -Force }

function Invoke-Robocopy([string]$From, [string]$To) {
	$prev = $ErrorActionPreference
	$ErrorActionPreference = "Continue"
	& robocopy $From $To /E /NFL /NDL /NJH /NJS /nc /ns /np | Out-Null
	$rc = $LASTEXITCODE
	$ErrorActionPreference = $prev
	if ($rc -ge 8) { throw "Copy failed ($rc): $From -> $To" }
}

New-Item -ItemType Directory -Force -Path (Join-Path $vanillaStage "QuestCore_Data") | Out-Null
New-Item -ItemType Directory -Force -Path (Join-Path $retailStage "QuestCore_Data") | Out-Null

Invoke-Robocopy $dataRoot (Join-Path $vanillaStage "QuestCore_Data")

Invoke-Robocopy $dataRoot (Join-Path $retailStage "QuestCore_Data")
Remove-Item (Join-Path $retailStage "QuestCore_Data\QuestCore_Data_Vanilla.toc") -Force -ErrorAction SilentlyContinue
Remove-Item (Join-Path $retailStage "QuestCore_Data\Data") -Recurse -Force -ErrorAction SilentlyContinue

New-ReleaseZip (Join-Path $vanillaStage "QuestCore_Data") $vanillaZip
New-ReleaseZip (Join-Path $retailStage "QuestCore_Data") $retailZip

$updaterDir = Join-Path $root "updater"
New-ReleaseZip $updaterDir $updaterZip

Remove-Item $vanillaStage -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item $retailStage -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item (Split-Path $dataRoot -Parent) -Recurse -Force -ErrorAction SilentlyContinue

Write-Host ""
Write-Host "Release zips ready ($Version):"
Write-Host "  $vanillaZip"
Write-Host "  $retailZip"
Write-Host "  $updaterZip"

exit 0
