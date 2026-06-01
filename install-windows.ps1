# QuickVid AI - Instalação para Windows
# Uso (repo público): irm https://raw.githubusercontent.com/diogo-matias/quickvid-download/main/install-windows.ps1 | iex

$ErrorActionPreference = "Stop"

$Repo = if ($args[0]) { $args[0] } else { "diogo-matias/quickvid-download" }
$AppName = "QuickVid AI"

Write-Host "[*] QuickVid AI - Instalação..." -ForegroundColor Cyan
Write-Host ""

if ($env:OS -ne "Windows_NT") {
  Write-Host "[ERRO] Este script é apenas para Windows." -ForegroundColor Red
  exit 1
}

Write-Host "Buscando última versão..."
$release = Invoke-RestMethod -Uri "https://api.github.com/repos/$Repo/releases/latest" -UseBasicParsing
$asset = $release.assets | Where-Object {
  $_.name -match '\.exe$' -and $_.name -notmatch 'blockmap'
} | Select-Object -First 1

if (-not $asset) {
  Write-Host "[ERRO] Nenhum instalador .exe encontrado no repositório $Repo" -ForegroundColor Red
  Write-Host "   Publique uma release no GitHub com o instalador do Windows."
  exit 1
}

$installerPath = Join-Path $env:TEMP $asset.name
Write-Host "Baixando $($asset.name)..."
Invoke-WebRequest -Uri $asset.browser_download_url -OutFile $installerPath -UseBasicParsing

Write-Host ""
Write-Host "[OK] Iniciando o instalador..."
Start-Process -FilePath $installerPath -Wait:$false

Write-Host "Pronto! Siga os passos na janela do instalador."
