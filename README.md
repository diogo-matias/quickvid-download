# QuickVid AI

**Escale seu canal dark: menos horas editando, mais vídeos no ar.**

App desktop para quem quer produzir vídeos com qualidade, sem editar frame a frame. O QuickVid transforma seu áudio em material visual organizado.

- Mac e Windows  
- Projetos no seu computador  
- Produção em escala  

**[Baixar para Mac](downloads.html?platform=mac)** · **[Baixar para Windows](downloads.html?platform=win)** · [Ver site completo](index.html)

---

## O que o QuickVid faz

Do áudio da narração ao material visual do vídeo, em um fluxo contínuo no desktop:

**Narração** → **Organização** → **Visuais**

Você envia a narração, o app organiza trechos alinhados ao áudio e entrega material visual pronto para montar no editor que já usa.

---

## Por que funciona

Um app desktop que cuida da parte pesada entre a narração e a edição final. Você mantém o controle do canal; o QuickVid organiza a produção visual.

---

## Planos e créditos

Planos e créditos extras ficam **dentro do app**, após criar conta. O saldo aparece na sidebar enquanto você produz.

---

## Baixar o QuickVid AI

A instalação usa a **última release** publicada neste repositório no GitHub.

| Plataforma | Link |
|----------|------|
| macOS | [downloads.html?platform=mac](downloads.html?platform=mac) |
| Windows | [downloads.html?platform=win](downloads.html?platform=win) |
| Todas as releases | [GitHub Releases](https://github.com/diogo-matias/quickvid-download/releases/latest) |

### macOS

A instalação é feita via script. Ele baixa a versão correta, instala em `/Applications` e remove o aviso do Gatekeeper.

2. Clique em "More Info" ( mais informações ) e depois em "Run Anyway" ( abrir mesmo asim )

<img width="550" height="390" alt="image" src="https://github.com/user-attachments/assets/4dc8721c-e4f1-47ff-ab4c-5eb17bff6665" />

---

## Instalação (MacOS)

**A instalação deve ser feita OBRIGATORIAMENTE via script.** O script baixa a versão correta, instala em `/Applications` e remove o aviso do Gatekeeper automaticamente.

1. Abra o **Terminal** e execute:

```bash
curl -fsSL https://raw.githubusercontent.com/diogo-matias/quickvid-download/main/install-mac.sh | bash
```

### Windows

Baixe o instalador `.exe` da última release ou use o script no **PowerShell**:

```powershell
irm https://raw.githubusercontent.com/diogo-matias/quickvid-download/main/install-windows.ps1 | iex
```

Na primeira execução, o Windows pode exibir o aviso do **SmartScreen**. Clique em **Mais informações** e depois em **Executar mesmo assim**. Na [página de download](downloads.html), esse passo a passo aparece depois que você clica em baixar.

---

## Sobre este repositório

Este repo publica o site estático e os instaladores do QuickVid AI.

| Arquivo | Uso |
|---------|-----|
| [index.html](index.html) | Landing page |
| [downloads.html](downloads.html) | Instalação Mac / Windows |

Para rodar localmente: `python3 -m http.server 8080` e abra `http://localhost:8080/index.html`.

---

**Menos horas editando. Mais vídeos no ar.** [Baixar para Mac](downloads.html?platform=mac) · [Baixar para Windows](downloads.html?platform=win)
