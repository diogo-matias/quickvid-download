#!/bin/bash
# QuickVid AI - Instalação para macOS
# Uso (repo público): curl -fsSL https://raw.githubusercontent.com/diogo-matias/quickvid-download/main/install-mac.sh | bash

set -e

# Repo público onde estão as releases
REPO="${REPO:-diogo-matias/quickvid-download}"
APP_NAME="QuickVid AI"

echo "📥 QuickVid AI - Instalação..."
echo ""

# Verifica se está no macOS
if [[ "$(uname)" != "Darwin" ]]; then
  echo "❌ Este script é apenas para macOS."
  exit 1
fi

# Permite passar o repo como argumento: bash -s -- owner/repo
if [[ -n "$1" ]]; then
  REPO="$1"
fi

# Busca URL do último release (DMG preferido, depois ZIP)
echo "Buscando última versão..."
RELEASE_JSON=$(curl -sL "https://api.github.com/repos/$REPO/releases/latest" 2>/dev/null)
DOWNLOAD_URL=$(echo "$RELEASE_JSON" | grep -o '"browser_download_url": "[^"]*\.dmg"' | head -1 | cut -d'"' -f4)

if [[ -z "$DOWNLOAD_URL" ]]; then
  DOWNLOAD_URL=$(echo "$RELEASE_JSON" | grep -o '"browser_download_url": "[^"]*\.zip"' | head -1 | cut -d'"' -f4)
fi

if [[ -z "$DOWNLOAD_URL" ]]; then
  echo "❌ Nenhum release encontrado no repositório $REPO"
  echo "   Crie uma release no GitHub com o arquivo .dmg ou .zip do Mac."
  exit 1
fi

# Download
TEMP_DIR=$(mktemp -d)
trap "rm -rf '$TEMP_DIR'" EXIT
echo "Baixando..."
curl -sL "$DOWNLOAD_URL" -o "$TEMP_DIR/download"

# Extrai (DMG ou ZIP)
cd "$TEMP_DIR"
if [[ "$DOWNLOAD_URL" == *".dmg" ]]; then
  hdiutil attach -nobrowse -quiet "download"
  # Copia o .app do volume (nome pode incluir versão: QuickVid AI 0.1.0)
  cp -R /Volumes/QuickVid\ AI*/QuickVid\ AI*.app /Applications/ 2>/dev/null || \
  cp -R /Volumes/QuickVid*/*.app /Applications/
  # Desmonta o volume
  hdiutil detach /Volumes/QuickVid* -quiet 2>/dev/null || true
else
  unzip -q download
  cp -R *.app /Applications/
fi

# Renomeia para o nome fixo se necessário
if [[ -d "/Applications/QuickVid AI "*.app ]]; then
  mv "/Applications/QuickVid AI "*.app "/Applications/$APP_NAME.app"
fi

# Remove quarentena (permite abrir sem aviso do Gatekeeper)
echo "Configurando..."
xattr -cr "/Applications/$APP_NAME.app"

echo ""
echo "✅ Instalado! Abrindo o QuickVid AI..."
open "/Applications/$APP_NAME.app"

echo "Pronto!"
