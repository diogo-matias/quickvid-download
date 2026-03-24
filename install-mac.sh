#!/bin/bash
# QuickVid AI - Instalação para macOS
# Uso (repo público): curl -fsSL https://raw.githubusercontent.com/diogo-matias/quickvid-download/main/install-mac.sh | bash

set -e

REPO="${REPO:-diogo-matias/quickvid-download}"
APP_NAME="QuickVid AI"

echo "[*] QuickVid AI - Instalação..."
echo ""

if [[ "$(uname)" != "Darwin" ]]; then
  echo "[ERRO] Este script é apenas para macOS."
  exit 1
fi

if [[ -n "$1" ]]; then
  REPO="$1"
fi

echo "Buscando última versão..."
RELEASE_JSON=$(curl -sL "https://api.github.com/repos/$REPO/releases/latest" 2>/dev/null)
DOWNLOAD_URL=$(echo "$RELEASE_JSON" | grep -o '"browser_download_url": "[^"]*\.dmg"' | head -1 | cut -d'"' -f4)

if [[ -z "$DOWNLOAD_URL" ]]; then
  DOWNLOAD_URL=$(echo "$RELEASE_JSON" | grep -o '"browser_download_url": "[^"]*\.zip"' | head -1 | cut -d'"' -f4)
fi

if [[ -z "$DOWNLOAD_URL" ]]; then
  echo "[ERRO] Nenhum release encontrado no repositório $REPO"
  echo "   Crie uma release no GitHub com o arquivo .dmg ou .zip do Mac."
  exit 1
fi

TEMP_DIR=$(mktemp -d)
trap "rm -rf '$TEMP_DIR'" EXIT
echo "Baixando..."
curl -sL "$DOWNLOAD_URL" -o "$TEMP_DIR/download"

cd "$TEMP_DIR"
if [[ "$DOWNLOAD_URL" == *".dmg" ]]; then
  hdiutil attach -nobrowse -quiet "download"
  cp -R /Volumes/QuickVid\ AI*/QuickVid\ AI*.app /Applications/ 2>/dev/null || \
  cp -R /Volumes/QuickVid*/*.app /Applications/
  hdiutil detach /Volumes/QuickVid* -quiet 2>/dev/null || true
else
  unzip -q download
  cp -R *.app /Applications/
fi

if [[ -d "/Applications/QuickVid AI "*.app ]]; then
  mv "/Applications/QuickVid AI "*.app "/Applications/$APP_NAME.app"
fi

echo "Configurando..."
xattr -cr "/Applications/$APP_NAME.app"

echo ""
echo "[OK] Instalado! Abrindo o QuickVid AI..."
open "/Applications/$APP_NAME.app"

echo "Pronto!"
