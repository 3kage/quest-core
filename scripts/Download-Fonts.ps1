# Download bundled QuestCore UI fonts (SIL Open Font License).
# Run: .\scripts\Download-Fonts.ps1

$ErrorActionPreference = "Stop"
$dest = Join-Path $PSScriptRoot "..\Media\Fonts"
New-Item -ItemType Directory -Force -Path $dest | Out-Null

$files = @{
	"QuestCoreUI.ttf" = "https://github.com/googlefonts/noto-fonts/raw/main/hinted/ttf/NotoSans/NotoSans-Regular.ttf"
	"QuestCoreKR.ttf" = "https://github.com/googlefonts/noto-cjk/raw/main/Sans/Variable/TTF/Subset/NotoSansKR-VF.ttf"
	"QuestCoreSC.ttf" = "https://github.com/googlefonts/noto-cjk/raw/main/Sans/Variable/TTF/Subset/NotoSansSC-VF.ttf"
	"QuestCoreTC.ttf" = "https://github.com/googlefonts/noto-cjk/raw/main/Sans/Variable/TTF/Subset/NotoSansTC-VF.ttf"
}

foreach ($name in $files.Keys) {
	$out = Join-Path $dest $name
	$minBytes = if ($name -eq "QuestCoreUI.ttf") { 100000 } else { 1000000 }
	if ((Test-Path $out) -and ((Get-Item $out).Length -ge $minBytes)) {
		Write-Host "Skip (exists): $name"
		continue
	}
	Write-Host "Download: $name"
	curl.exe -L -o $out $files[$name]
	if (-not (Test-Path $out) -or (Get-Item $out).Length -lt $minBytes) {
		throw "Download failed or file too small: $name"
	}
}

Write-Host "Done. Fonts in $dest"
Get-ChildItem $dest\*.ttf | Format-Table Name, Length
