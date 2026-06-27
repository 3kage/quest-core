# Rebrand bundled guide library: legacy guide API token -> QC (QuestCore).
# Gold modules use QuestCore.Gold; gear tables use QuestCore.ItemScore.
#
# Usage:
#   .\Tools\Rebrand-GuidesToQC.ps1
#   .\Tools\Rebrand-GuidesToQC.ps1 -IncludeTravel
#   .\Tools\Rebrand-GuidesToQC.ps1 -FullTree
#   .\Tools\Rebrand-GuidesToQC.ps1 -WhatIf

param(
    [string]$QuestCoreRoot = (Join-Path $PSScriptRoot ".."),
    [string]$GuidesRoot = (Join-Path $PSScriptRoot "..\Guides\Library"),
    [string]$TravelRoot = (Join-Path $PSScriptRoot "..\Travel"),
    [switch]$IncludeTravel,
    [switch]$FullTree,
    [switch]$WhatIf
)

$QuestCoreRoot = (Resolve-Path -LiteralPath $QuestCoreRoot).Path
$GuidesRoot = (Resolve-Path -LiteralPath $GuidesRoot).Path
if ($IncludeTravel -and (Test-Path -LiteralPath $TravelRoot)) {
    $TravelRoot = (Resolve-Path -LiteralPath $TravelRoot).Path
}

$utf8 = [System.Text.UTF8Encoding]::new($false)

function Test-GoldGuidePath([string]$rel) {
    return ($rel -replace '\\', '/') -match '(?i)^Gold/'
}

function Convert-GuideZGVToQC([string]$content, [string]$relPath) {
    $content = $content -replace "`r`n", "`n"
    $content = $content -replace "`r", "`n"

    $content = $content -replace 'QuestCoreLegacy\.ItemScore', 'QuestCore.ItemScore'
    $content = $content -replace 'if not QuestCoreLegacy\.ItemScore then return end', 'if not QuestCore.ItemScore then return end'
    $content = $content -creplace '\bZGV\.ItemScore\b', 'QuestCore.ItemScore'
    $content = $content -replace 'if not ZGV\.ItemScore then return end', 'if not QuestCore.ItemScore then return end'

    # Gold modules attach data to QuestCore.Gold (see Core/Gold.lua).
    if (Test-GoldGuidePath $relPath) {
        $content = $content -replace 'local ZGV = QuestCoreLegacy', 'local QC = QuestCore'
        $content = $content -replace 'local QCL = QuestCoreLegacy', 'local QC = QuestCore'
        $content = $content -replace 'if not ZGV then return', 'if not QC.Gold then return'
        $content = $content -replace 'if not QCL then return', 'if not QC.Gold then return'
        $content = $content -replace '\bZGVG\b', 'QCG'
        $content = $content -replace '\bZGV\.', 'QC.'
        $content = $content -replace '\bZGV:', 'QC:'
        $content = $content -replace '\bQCL\.', 'QC.'
        $content = $content -replace 'local QCG=QCL\.Gold', 'local QCG = QC.Gold'
        $content = $content -replace 'local QCG = QCL\.Gold', 'local QCG = QC.Gold'
        return $content
    }

    $content = $content -replace '_G\.ZGV\b', '_G.QC'
    $content = $content -replace '\{cond:ZGV\.', '{cond:QC.'
    $content = $content -replace 'local ZGV = QuestCore\r?\n', ''
    $content = $content -replace 'if not ZGV then return end\r?\n', ''
    $content = $content -replace 'if not ZGV then return\r?\n', ''
    $content = $content -replace '\bZGVG\b', 'QCG'
    $content = $content -creplace '\bZGV\.', 'QC.'
    $content = $content -creplace '\bZGV:', 'QC:'
    return $content
}

function Convert-RuntimeZGVToQC([string]$content, [string]$relPath) {
    $content = $content -replace "`r`n", "`n"
    $content = $content -replace "`r", "`n"
    $content = $content -replace 'local ZGV\s*=\s*addon', 'local QC = addon'
    $content = $content -replace '_G\.ZGV\b', '_G.QC'
    $content = $content -replace '\{cond:ZGV\.', '{cond:QC.'
    $content = $content -replace 'local ZGV = QuestCore\r?\n', ''
    $content = $content -replace 'if not ZGV then return end\r?\n', ''
    $content = $content -replace 'if not ZGV then return\r?\n', ''
    $content = $content -replace '\bZGVG\b', 'QCG'
    $content = $content -creplace '\bZGV\.', 'QC.'
    $content = $content -creplace '\bZGV:', 'QC:'
    return $content
}

function Convert-TravelZGVToQC([string]$content, [string]$relPath) {
    return Convert-RuntimeZGVToQC $content $relPath
}

function Convert-DocsZGVToQC([string]$content, [string]$relPath) {
    $content = $content -replace "`r`n", "`n"
    $content = $content -replace "`r", "`n"
    $content = $content -creplace '\bZGV\.', 'QC.'
    $content = $content -creplace '\bZGV\b', 'QC'
    return $content
}

function Invoke-RebrandFolder {
    param(
        [string]$Root,
        [scriptblock]$Converter,
        [string]$Label,
        [string[]]$Filter = @('*.lua')
    )

    if (-not (Test-Path $Root)) {
        Write-Warning "$Label root not found: $Root"
        return @{ Files = 0; Changed = 0; Replacements = 0 }
    }

    $files = foreach ($glob in $Filter) {
        Get-ChildItem -Path $Root -Filter $glob -Recurse -File
    }
    $files = $files | Sort-Object -Property FullName -Unique

    $changed = 0
    $replacements = 0

    foreach ($file in $files) {
        $rel = $file.FullName.Substring($Root.Length).TrimStart('\', '/')
        $raw = [System.IO.File]::ReadAllText($file.FullName)
        if ($raw -notmatch 'ZGV') { continue }

        $before = ([regex]::Matches($raw, '\bZGV\b')).Count
        $out = & $Converter $raw $rel
        $after = ([regex]::Matches($out, '\bZGV\b')).Count
        $delta = $before - $after
        if ($delta -le 0 -and $out -eq $raw) { continue }

        $changed++
        $replacements += [Math]::Max($delta, 0)

        if ($WhatIf) {
            Write-Host ("  [whatif] {0} (-{1} ZGV)" -f $rel, $delta)
        }
        else {
            [System.IO.File]::WriteAllText($file.FullName, $out, $utf8)
        }
    }

    return @{
        Files = @($files).Count
        Changed = $changed
        Replacements = $replacements
    }
}

function Get-RemainingZGVCount {
    param(
        [string]$Root,
        [string[]]$Filter = @('*.lua')
    )

    if (-not (Test-Path $Root)) { return 0 }

    $remaining = 0
    $files = foreach ($glob in $Filter) {
        Get-ChildItem -Path $Root -Filter $glob -Recurse -File
    }
    foreach ($file in ($files | Sort-Object -Property FullName -Unique)) {
        $text = [System.IO.File]::ReadAllText($file.FullName)
        if ($text -match '\bZGV\b') { $remaining++ }
    }
    return $remaining
}

Write-Host "QuestCore guide rebrand (legacy API token -> QC)"
Write-Host "Guides: $GuidesRoot"
if ($WhatIf) { Write-Host "Mode: WhatIf (no writes)" }

$guideStats = Invoke-RebrandFolder -Root $GuidesRoot -Converter ${function:Convert-GuideZGVToQC} -Label "Guides"
Write-Host ("Guides: scanned {0} files, changed {1}, ~{2} token replacements" -f $guideStats.Files, $guideStats.Changed, $guideStats.Replacements)

if ($IncludeTravel -or $FullTree) {
    Write-Host "Travel: $TravelRoot"
    $travelStats = Invoke-RebrandFolder -Root $TravelRoot -Converter ${function:Convert-TravelZGVToQC} -Label "Travel"
    Write-Host ("Travel: scanned {0} files, changed {1}, ~{2} token replacements" -f $travelStats.Files, $travelStats.Changed, $travelStats.Replacements)
}

if ($FullTree) {
    $coreRoot = Join-Path $QuestCoreRoot "Core"
    $uiRoot = Join-Path $QuestCoreRoot "UI"
    $docsRoot = Join-Path $QuestCoreRoot "Docs"

    Write-Host "Core: $coreRoot"
    $coreStats = Invoke-RebrandFolder -Root $coreRoot -Converter ${function:Convert-RuntimeZGVToQC} -Label "Core"
    Write-Host ("Core: scanned {0} files, changed {1}, ~{2} token replacements" -f $coreStats.Files, $coreStats.Changed, $coreStats.Replacements)

    Write-Host "UI: $uiRoot"
    $uiStats = Invoke-RebrandFolder -Root $uiRoot -Converter ${function:Convert-RuntimeZGVToQC} -Label "UI"
    Write-Host ("UI: scanned {0} files, changed {1}, ~{2} token replacements" -f $uiStats.Files, $uiStats.Changed, $uiStats.Replacements)

    Write-Host "Docs: $docsRoot"
    $docsStats = Invoke-RebrandFolder -Root $docsRoot -Converter ${function:Convert-DocsZGVToQC} -Label "Docs" -Filter @('*.md', '*.lua')
    Write-Host ("Docs: scanned {0} files, changed {1}, ~{2} token replacements" -f $docsStats.Files, $docsStats.Changed, $docsStats.Replacements)
}

$remaining = Get-RemainingZGVCount -Root $GuidesRoot
if ($FullTree) {
    $remaining += Get-RemainingZGVCount -Root (Join-Path $QuestCoreRoot "Core")
    $remaining += Get-RemainingZGVCount -Root (Join-Path $QuestCoreRoot "UI")
    $remaining += Get-RemainingZGVCount -Root (Join-Path $QuestCoreRoot "Travel")
    $remaining += Get-RemainingZGVCount -Root (Join-Path $QuestCoreRoot "Docs") -Filter @('*.md', '*.lua')
}
Write-Host "Remaining files with legacy API token: $remaining"
if ($remaining -gt 0 -and -not $WhatIf) {
    Write-Host "Review leftovers (often migration-script references in Tools/ only)."
}
