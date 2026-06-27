# Fail if legacy ZGV / QuestCoreLegacy / Zygor tokens appear outside Tools/.
#
# Policy A: Tools/ migration scripts intentionally keep ZGV as SOURCE patterns
# (what to find when converting from ZygorGuidesViewer). Only runtime output
# must be clean — this script enforces that by excluding Tools/ from the scan.
#
# Usage:
#   .\Tools\Verify-NoZGV.ps1
#   powershell -File Tools\Verify-NoZGV.ps1

param(
    [string]$Root = (Join-Path $PSScriptRoot "..")
)

$Root = (Resolve-Path -LiteralPath $Root).Path
$toolsPath = (Resolve-Path -LiteralPath (Join-Path $PSScriptRoot ".")).Path
$patterns = @('\bZGV\b', 'QuestCoreLegacy', 'Zygor')

$extensions = @('.lua', '.md', '.toc', '.xml', '.txt', '.ps1', '.py')
$hits = [System.Collections.Generic.List[string]]::new()

Get-ChildItem -Path $Root -Recurse -File | ForEach-Object {
    $full = $_.FullName
    if ($full.StartsWith($toolsPath, [System.StringComparison]::OrdinalIgnoreCase)) {
        return
    }
    if ($extensions -notcontains $_.Extension.ToLowerInvariant()) {
        return
    }

    $text = [System.IO.File]::ReadAllText($full)
    foreach ($pattern in $patterns) {
        if ($text -match $pattern) {
            $rel = $full.Substring($Root.Length).TrimStart('\', '/')
            $hits.Add("${rel} [$pattern]")
            break
        }
    }
}

if ($hits.Count -gt 0) {
    Write-Host "FAIL: found legacy brand tokens outside Tools/ ($($hits.Count) file(s)):" -ForegroundColor Red
    foreach ($path in $hits) {
        Write-Host "  $path"
    }
    exit 1
}

Write-Host "PASS: no legacy ZGV/QuestCoreLegacy/Zygor tokens outside Tools/ (scanned under $Root)" -ForegroundColor Green
exit 0
