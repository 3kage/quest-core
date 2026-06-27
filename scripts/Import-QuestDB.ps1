# Import-QuestDB.ps1
# Re-copy bundled quest database Lua files into QuestCore Data/QuestDB.

param(
    [string]$QuestCoreRoot = (Split-Path -Parent $PSScriptRoot),
    [string]$SourcePath = "",
    [string]$ClassicEraAddons = "D:\Games\World of Warcraft\_classic_era_\Interface\AddOns",
    [string]$ClassicAddons = "D:\Games\World of Warcraft\_classic_\Interface\AddOns",
    [ValidateSet("Classic", "TBC", "Wotlk", "MoP")]
    [string]$Expansion = "Classic"
)

$ErrorActionPreference = "Stop"

function Find-DatabaseRoot {
    param([string]$SubFolder)

    foreach ($addonsRoot in @($ClassicEraAddons, $ClassicAddons)) {
        if (-not (Test-Path $addonsRoot)) { continue }
        foreach ($dir in Get-ChildItem -Path $addonsRoot -Directory -ErrorAction SilentlyContinue) {
            $dbPath = Join-Path $dir.FullName ("Database\" + $SubFolder)
            if (Test-Path $dbPath) { return $dir.FullName }
        }
    }
    return $null
}

function Resolve-DatabaseSource {
    param([string]$ExpansionName, [string]$ExplicitPath)

    if ($ExplicitPath -and (Test-Path $ExplicitPath)) {
        return $ExplicitPath
    }

    switch ($ExpansionName) {
        "Classic" {
            $root = Find-DatabaseRoot -SubFolder "Classic"
            if ($root) { return $root }
            throw "Classic database source not found. Set -SourcePath to an addon folder containing Database/Classic/."
        }
        "TBC" {
            $root = Find-DatabaseRoot -SubFolder "TBC"
            if ($root) { return $root }
            throw "TBC database source not found. Set -SourcePath."
        }
        "Wotlk" {
            throw "Wotlk import not wired yet; copy Database/Wotlk/* manually to Data/QuestDB/Wotlk/."
        }
        "MoP" {
            throw "MoP import not wired yet; copy Database/MoP/* manually to Data/QuestDB/MoP/."
        }
    }
}

$source = Resolve-DatabaseSource -ExpansionName $Expansion -ExplicitPath $SourcePath
$destRoot = Join-Path $QuestCoreRoot "Data\QuestDB"
$destClassic = Join-Path $destRoot "Classic"
$destZones = Join-Path $destRoot "Zones"

New-Item -ItemType Directory -Force -Path $destClassic | Out-Null
New-Item -ItemType Directory -Force -Path $destZones | Out-Null

$srcDb = Join-Path $source "Database"
if ($Expansion -eq "Classic") {
    $srcFolder = Join-Path $srcDb "Classic"
    $files = @("classicQuestDB.lua", "classicNpcDB.lua", "classicObjectDB.lua", "classicItemDB.lua")
    foreach ($f in $files) {
        Copy-Item -Force (Join-Path $srcFolder $f) (Join-Path $destClassic $f)
    }
    Copy-Item -Force (Join-Path $srcDb "Zones\data\areaIdToUiMapId.lua") (Join-Path $destZones "areaIdToUiMapId.lua")
    Copy-Item -Force (Join-Path $srcDb "Zones\data\subZoneToParentZone.lua") (Join-Path $destZones "subZoneToParentZone.lua")
} elseif ($Expansion -eq "TBC") {
    $srcFolder = Join-Path $srcDb "TBC"
    $destTbc = Join-Path $destRoot "TBC"
    New-Item -ItemType Directory -Force -Path $destTbc | Out-Null
    $files = @("tbcQuestDB.lua", "tbcNpcDB.lua", "tbcObjectDB.lua", "tbcItemDB.lua")
    foreach ($f in $files) {
        Copy-Item -Force (Join-Path $srcFolder $f) (Join-Path $destTbc $f)
    }
    Copy-Item -Force (Join-Path $srcDb "Zones\data\areaIdToUiMapId.lua") (Join-Path $destZones "areaIdToUiMapId.lua")
    Copy-Item -Force (Join-Path $srcDb "Zones\data\subZoneToParentZone.lua") (Join-Path $destZones "subZoneToParentZone.lua")
}

Write-Host "Imported $Expansion quest database from:"
Write-Host "  $source"
Write-Host "into:"
Write-Host "  $destRoot"
Write-Host "Reload UI in game to pick up changes."
