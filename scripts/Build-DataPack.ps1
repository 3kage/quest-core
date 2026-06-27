# Build QuestCore_Data release folder (guides + quest DB).
# Usage: .\scripts\Build-DataPack.ps1 [-Flavor Classic|Retail|All] [-OutDir path]

param(
	[ValidateSet("Classic", "Retail", "All")]
	[string]$Flavor = "All",
	[string]$OutDir = ""
)

$ErrorActionPreference = "Stop"
$root = Split-Path $PSScriptRoot -Parent
if ($OutDir -eq "") {
	$OutDir = Join-Path (Split-Path $root -Parent) "QuestCore_Data"
}
$out = $OutDir
$srcGuides = Join-Path $root "Guides"
$srcData = Join-Path $root "Data"

New-Item -ItemType Directory -Force -Path $out | Out-Null
New-Item -ItemType Directory -Force -Path (Join-Path $out "Guides") | Out-Null
New-Item -ItemType Directory -Force -Path (Join-Path $out "Data") | Out-Null

function Invoke-Robocopy([string]$From, [string]$To) {
	$prev = $ErrorActionPreference
	$ErrorActionPreference = "Continue"
	& robocopy $From $To /E /NFL /NDL /NJH /NJS /nc /ns /np | Out-Null
	$rc = $LASTEXITCODE
	$ErrorActionPreference = $prev
	if ($rc -ge 8) { throw "Copy failed ($rc): $From -> $To" }
}

function Copy-Tree($from, $to) {
	if (-not (Test-Path $from)) { return }
	Invoke-Robocopy $from $to
}

Copy-Tree $srcGuides (Join-Path $out "Guides")
Copy-Tree $srcData (Join-Path $out "Data")

if ($Flavor -eq "Classic" -or $Flavor -eq "All") {
	@'
## Interface: 11508
## Title: |cff33d6ffQuest|r|cffffffffCore|r |cff33d6ffData Pack|r
## Notes: Community guide library and quest database for QuestCore.
## Author: QuestCore
## Version: 3.0.1
## Dependencies: QuestCore

Guides\Guides_Classic.xml
Data\QuestDB\QuestDB_Classic.xml
'@ | Set-Content -Path (Join-Path $out "QuestCore_Data_Vanilla.toc") -Encoding UTF8
}

if ($Flavor -eq "Retail" -or $Flavor -eq "All") {
	@'
## Interface: 120007
## Title: |cff33d6ffQuest|r|cffffffffCore|r |cff33d6ffData Pack|r
## Notes: Community guide library for QuestCore.
## Author: QuestCore
## Version: 3.0.1
## Dependencies: QuestCore

Guides\Guides_Retail.xml
'@ | Set-Content -Path (Join-Path $out "QuestCore_Data.toc") -Encoding UTF8
}

Write-Host "Data pack built: $out"
Write-Output $out
