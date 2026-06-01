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

### Menos retrabalho

Chega de caçar B-roll, repetir prompt e perder o fio da narração. Tudo fica no mesmo projeto.

*Fluxo contínuo, sem trocar de ferramenta o tempo todo.*

### Material organizado

Cada parte da narração vira trecho com visual definido. Você sabe o que gerar e onde encaixa.

*Escala sem virar bagunça de pastas.*

### Pronto para editar

A saída é pensada para você montar o vídeo no editor que já usa. O QuickVid não substitui sua edição final.

*Mais vídeos no ar com o mesmo time.*

---

## Para quem é

Criadores de vídeo que trabalham com narração e precisam produzir mais, sem montar tudo na mão.

- Canais no **YouTube, TikTok e Reels**
- Formatos **faceless**, educativos, curiosidades, mistério, terror e nichos narrados
- Quem publica **vários vídeos por semana** e quer ganhar tempo na pré-produção
- Produtores solo ou **pequenas equipes** no Brasil
- Quem já edita em **CapCut, Premiere** ou similar e quer material organizado
- Criadores de **canal dark** que buscam escalar volume com coerência visual

---

## Planos e créditos

Planos e créditos extras ficam **dentro do app**, após criar conta. O saldo aparece na sidebar enquanto você produz.

---

## Perguntas frequentes

**Preciso saber editar?**  
A montagem final continua no seu editor de vídeo. O QuickVid acelera a pré-produção visual antes dessa etapa.

**Funciona com voz IA?**  
Sim. Basta enviar o arquivo de áudio da narração, seja voz gravada ou gerada por IA.

**Conta Google é obrigatória?**  
Para gerar mídia dentro do app, você conecta sua conta Google na área de integrações.

**Funciona no Mac e no Windows?**  
Sim. O QuickVid AI é um app desktop para macOS e Windows.

**Os vídeos ficam todos iguais?**  
Você define o estilo e as instruções do seu canal. O app organiza a produção; a identidade visual continua sua.

**O app publica direto no YouTube?**  
Não. A saída é material organizado para você editar e publicar no seu ritmo.

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

Abra o **Terminal** e execute:

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
