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
		$Version = (Select-String -Path $engineToc -Pattern '^## Version:\s*(.+)$').Matches[0].Groups[1].Value.Trim()
	}
}
if ($Version -eq "") { $Version = "3.0.1" }

$dataRoot = Join-Path (Split-Path $root -Parent) "QuestCore_Data"

Write-Host "Building data pack..."
& (Join-Path $PSScriptRoot "Build-DataPack.ps1") -Flavor All | Out-Host

# Sync version into generated TOCs
Get-ChildItem -Path $dataRoot -Filter "*.toc" | ForEach-Object {
	$content = [System.IO.File]::ReadAllText($_.FullName)
	$content = $content -replace '(?m)^## Version:.*$', "## Version: $Version"
	[System.IO.File]::WriteAllText($_.FullName, $content, [System.Text.UTF8Encoding]::new($false))
}

New-Item -ItemType Directory -Force -Path $OutDir | Out-Null

function New-ReleaseZip([string]$SourceFolder, [string]$ZipPath) {
	if (Test-Path $ZipPath) { Remove-Item $ZipPath -Force }
	Compress-Archive -Path $SourceFolder -DestinationPath $ZipPath -CompressionLevel Optimal
	Write-Host "Created: $ZipPath"
}

$vanillaZip = Join-Path $OutDir "QuestCore_Data_Vanilla-$Version.zip"
$retailZip = Join-Path $OutDir "QuestCore_Data-$Version.zip"
$updaterZip = Join-Path $OutDir "QuestCore-Updater.zip"

# Zip must contain QuestCore_Data/ folder for Expand-Archive install
$vanillaStage = Join-Path $env:TEMP ("qc_release_vanilla_" + [guid]::NewGuid().ToString("N"))
$retailStage = Join-Path $env:TEMP ("qc_release_retail_" + [guid]::NewGuid().ToString("N"))
try {
	New-Item -ItemType Directory -Force -Path (Join-Path $vanillaStage "QuestCore_Data") | Out-Null
	New-Item -ItemType Directory -Force -Path (Join-Path $retailStage "QuestCore_Data") | Out-Null

	robocopy $dataRoot (Join-Path $vanillaStage "QuestCore_Data") /E /NFL /NDL /NJH /NJS /nc /ns /np | Out-Null
	if ($LASTEXITCODE -ge 8) { throw "Stage copy failed (vanilla)" }

	# Retail pack: Guides only (no Classic QuestDB) — use same tree but trim in future if split
	robocopy $dataRoot (Join-Path $retailStage "QuestCore_Data") /E /NFL /NDL /NJH /NJS /nc /ns /np | Out-Null
	if ($LASTEXITCODE -ge 8) { throw "Stage copy failed (retail)" }
	Remove-Item (Join-Path $retailStage "QuestCore_Data\QuestCore_Data_Vanilla.toc") -Force -ErrorAction SilentlyContinue
	Remove-Item (Join-Path $retailStage "QuestCore_Data\Data") -Recurse -Force -ErrorAction SilentlyContinue

	New-ReleaseZip $vanillaStage $vanillaZip
	New-ReleaseZip $retailStage $retailZip
}
finally {
	Remove-Item $vanillaStage -Recurse -Force -ErrorAction SilentlyContinue
	Remove-Item $retailStage -Recurse -Force -ErrorAction SilentlyContinue
}

$updaterDir = Join-Path $root "updater"
New-ReleaseZip $updaterDir $updaterZip

Write-Host ""
Write-Host "Upload to GitHub Release ($Version):"
Write-Host "  $vanillaZip"
Write-Host "  $retailZip"
Write-Host "  $updaterZip"
Write-Host ""
Write-Host "CurseForge: ship engine only (QuestCore_Engine*.toc)."
