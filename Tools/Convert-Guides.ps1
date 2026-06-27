# Convert an external guide library (non-Trial) into QuestCore/Guides/Library bundled files.
# Run: .\Tools\Convert-Guides.ps1

$SourceRoot = "D:\Games\World of Warcraft\_retail_\Interface\AddOns\QuestCore\Guides-Retail"
$OutRoot    = "D:\Games\World of Warcraft\_retail_\Interface\AddOns\QuestCore\Guides\Library"

if (-not (Test-Path $SourceRoot)) {
    Write-Error "Source guide library not found: $SourceRoot"
    exit 1
}

function Test-ExcludeFromAutoload([string]$path) {
    $p = ($path -replace '\\', '/')
    if ($p -match 'Trial') { return $true }
    if ($p -match '^Images/') { return $true }
    if ($p -match '^Poi/') { return $true }
    if ($p -match '^Gold/') { return $true }
    if ($p -match 'Dungeons/QuestCoreGear') { return $true }
    if ($p -match 'TalentAdvisor-Builds') { return $true }
    return $false
}

function Convert-GuideContent([string]$content) {
    $content = $content -replace "`r`n", "`n"
    $content = $content -replace "`r", "`n"

    $content = $content -replace 'QuestCore:RegisterGuide', 'QuestCore:RegisterGuide'
    $content = $content -replace 'QuestCore:RegisterInclude', 'QuestCore:RegisterInclude'
    $content = $content -replace 'local QuestCore\s*=\s*QuestCore\s*\r?\n', ''
    $content = $content -replace 'if not QuestCore then return end\s*\r?\n', ''

    $content = $content -replace 'if ZGV:DoMutex\([^\)]*\) then return end\s*\r?\n', ''
    $content = $content -replace 'QuestCore\.GuideMenuTier[^\r\n]*\r?\n', ''

    $content = $content -replace ',\s*image=ZGV\.IMAGESDIR[^\r\n\},]*', ''
    $content = $content -replace 'image=ZGV\.IMAGESDIR[^\r\n\},]*,?\s*', ''
    $content = $content -replace ',\s*image=QC\.IMAGESDIR[^\r\n\},]*', ''
    $content = $content -replace 'image=QC\.IMAGESDIR[^\r\n\},]*,?\s*', ''

    # Legacy beta markers and gold-module hooks handled by Core/Compat.lua stubs.
    $content = $content -replace 'ZGV\.BETASTART\(\)\s*\r?\n', ''
    $content = $content -replace 'ZGV\.BETAEND\(\)\s*\r?\n', ''
    $content = $content -replace 'QC\.BETASTART\(\)\s*\r?\n', ''
    $content = $content -replace 'QC\.BETAEND\(\)\s*\r?\n', ''
    $content = $content -replace 'QuestCore\.Gold\.guides_loaded\s*=\s*true\s*\r?\n', ''
    $content = $content -replace 'if not QuestCore\.ItemScore then return end\s*\r?\n', ''

    # Gold modules attach tables to QuestCore.Gold (see Core/Gold.lua).
    $content = $content -replace 'local ZGV = QuestCoreLegacy', 'local QC = QuestCore'
    $content = $content -replace 'local QCL = QuestCoreLegacy', 'local QC = QuestCore'
    $content = $content -replace 'if not ZGV then return', 'if not QC.Gold then return'
    $content = $content -replace 'if not QCL then return', 'if not QC.Gold then return'
    $content = $content -replace '\bZGVG\b', 'QCG'
    $content = $content -replace '\bZGV\.', 'QC.'
    $content = $content -replace '\bZGV:', 'QC:'
    $content = $content -replace '\bQCL\.Gold\b', 'QC.Gold'
    $content = $content -replace '\bQCL\.Goldguide\b', 'QC.Goldguide'

    $content = $content -creplace '\bZGV\.', 'QC.'
    $content = $content -creplace '\bZGV:', 'QC:'
    $content = $content -replace 'local ZGV = QuestCore\r?\n', ''
    $content = $content -replace 'if not ZGV then return end\r?\n', ''
    $content = $content -replace 'QuestCoreLegacy\.ItemScore', 'QuestCore.ItemScore'
    $content = $content -replace 'if not QuestCoreLegacy\.ItemScore then return end\s*\r?\n', ''

    # Talent Advisor: legacy ZTA namespace -> QuestCore.TalentAdvisor
    $content = $content -replace 'QuestCore\.ZTA', 'QuestCore.TalentAdvisor'
    $content = $content -replace 'QC\.ZTA', 'QC.TalentAdvisor'
    $content = $content -replace 'ZGV\.ZTA', 'QuestCore.TalentAdvisor'
    $content = $content -replace 'if not (?:QC|QuestCore)\.ZTA then return end\s*\r?\n', "if not QuestCore.TalentAdvisor then return end`n"
    $content = $content -replace 'local ZTA\s*=\s*QC\.ZTA', 'local QuestCoreTalentAdvisor=QuestCore.TalentAdvisor'
    $content = $content -creplace '\bZTA:RegisterBuild', 'QuestCoreTalentAdvisor:RegisterBuild'

    # Scrub legacy brand text from display strings.
    $content = $content -creplace 'support@questcoreguides\.com', 'QuestCore'
    $content = $content -creplace 'questcoreguides\.com', 'questcore'

    if ($content -notmatch 'if not QuestCore then return') {
        $header = "-- Bundled QuestCore guide`nif not QuestCore then return end`n`n"
        $content = $header + $content
    }

    return $content
}

# Strip a leading legacy brand prefix from an output file name.
function Get-CleanName([string]$name) {
    return ($name -replace '^QuestCore','')
}

Write-Host "Converting non-Trial guide files..."
$files = Get-ChildItem -Path $SourceRoot -Recurse -Filter "*.lua" |
    Where-Object { $_.Name -notmatch 'Trial' }

$converted = 0
foreach ($file in $files) {
    $rel = $file.FullName.Substring($SourceRoot.Length).TrimStart('\')
    # Strip the legacy brand prefix from the file name only.
    $relDir = Split-Path $rel -Parent
    $relName = Get-CleanName (Split-Path $rel -Leaf)
    $rel = if ($relDir) { Join-Path $relDir $relName } else { $relName }
    $dest = Join-Path $OutRoot $rel
    $destDir = Split-Path $dest -Parent
    if (-not (Test-Path $destDir)) {
        New-Item -ItemType Directory -Force -Path $destDir | Out-Null
    }

    $raw = [System.IO.File]::ReadAllText($file.FullName)
    $out = Convert-GuideContent $raw
    [System.IO.File]::WriteAllText($dest, $out, [System.Text.UTF8Encoding]::new($false))
    $converted++
}

Write-Host "Converted $converted files to $OutRoot"

# Generate Autoload.xml (skip Trial + non-guide data modules).
$autoSrc = Join-Path $SourceRoot "Autoload.xml"
$autoDst = Join-Path $OutRoot "Autoload.xml"
$lines = Get-Content $autoSrc -Encoding UTF8
$outLines = New-Object System.Collections.Generic.List[string]
$outLines.Add('<Ui xmlns="http://www.blizzard.com/wow/ui/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.blizzard.com/wow/ui/FrameXML/UI.xsd">')

$included = 0
$skipped = 0
foreach ($line in $lines) {
    if ($line -match '<Script\s+file="([^"]+)"') {
        $path = $Matches[1]
        if (Test-ExcludeFromAutoload $path) {
            $skipped++
            continue
        }
        $path = $path -replace '\\', '/'
        # Strip the legacy brand prefix from the referenced file name.
        $path = $path -replace '(/)QuestCore', '$1' -replace '^QuestCore', ''
        $outLines.Add("`t<Script file=`"$path`"/>")
        $included++
    }
}

$outLines.Add('</Ui>')
[System.IO.File]::WriteAllLines($autoDst, $outLines, [System.Text.UTF8Encoding]::new($false))
Write-Host "Wrote $autoDst ($included scripts, $skipped excluded)"
