# QuestCore: scan bundled guides for DSL tags/conditions vs engine support.
# Usage: .\Tools\Audit-GuideCompatibility.ps1 [-OutFile report.csv]

param(
    [string]$GuidesRoot = (Join-Path $PSScriptRoot "..\Guides\Library"),
    [string]$OutFile = ""
)

$patterns = [ordered]@{
    "|or"              = "yes"
    "scenariogoal"      = "partial"
    "loadguide"         = "partial"
    "|script"           = "partial"
    "|path"             = "partial"
    "|override"         = "yes"
    "skillmax"          = "partial"
    "|skill("           = "partial"
    "QC.InPhase"       = "partial"
    "|notravel"         = "partial"
    "|noautoaccept"     = "partial"
    "|fpath"            = "partial"
    "condition_end"     = "partial"
    "condition_suggested" = "partial"
    "^buy "             = "partial"
    "^create "          = "partial"
}

$files = Get-ChildItem -Path $GuidesRoot -Filter "*.lua" -Recurse -File
$rows = @()
$totals = @{}

foreach ($pat in $patterns.Keys) { $totals[$pat] = 0 }

foreach ($file in $files) {
    $text = Get-Content -LiteralPath $file.FullName -Raw -ErrorAction SilentlyContinue
    if (-not $text) { continue }
    $rel = $file.FullName.Substring($GuidesRoot.Length).TrimStart("\", "/")
    foreach ($pat in $patterns.Keys) {
        $count = ([regex]::Matches($text, [regex]::Escape($pat))).Count
        if ($count -gt 0) {
            $totals[$pat] += $count
            $rows += [pscustomobject]@{
                File       = $rel
                Pattern    = $pat
                Count      = $count
                Support    = $patterns[$pat]
            }
        }
    }
}

Write-Host "QuestCore Guide Compatibility Audit"
Write-Host "Files scanned: $($files.Count)"
Write-Host ""
Write-Host "Totals by pattern:"
foreach ($pat in $patterns.Keys) {
    Write-Host ("  {0,-22} {1,6}  ({2})" -f $pat, $totals[$pat], $patterns[$pat])
}

if ($OutFile -ne "") {
    $rows | Sort-Object Pattern, Count -Descending | Export-Csv -Path $OutFile -NoTypeInformation -Encoding UTF8
    Write-Host ""
    Write-Host "Wrote $($rows.Count) rows to $OutFile"
}
