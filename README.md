# Minha configuração do Neovim
Aqui está a minha configuração atual do **Neovim**. Ainda estou 
testando muitas coisas e não recomendo que você a use.

## Requisitos

* **Neovim 0.9.2**+
* `tar` e `curl` no seu path (alternativamente, `git`)
* Um compilador **C** no seu path e **libstdc++** instalado
* tree-sitter-cli

**Vim-Plug** precisa ser instalado manualmente, depois 
execute `:PlugInstall` no seu **Neovim**.

## Shortcuts
A tecla `Mod` configurada é a `<Space>`.

### Normal Mode
| Keybind          | Descrição                          |
|------------------|------------------------------------|
| **Mod + w**      | Salva o buffer atual.              |
| **Mod + q**      | Fecha o buffer atual.              |
| **g + D**        | Goto definition.                   |
| **g + d**        | Goto declaration.                  |
| **Mod + r**      | Renomeia o rótulo acima do cursor. |

### Insertion Mode
| Keybind (nvim-cmp)    | Descrição                |
|-----------------------|--------------------------|
| **Ctrl + Space**      | Abre o autocomplete.     |
| **Ctrl + e**          | Cancela o autocomplete.  |
| **Enter**             | Confirma o autocomplete. |
| **PageDown**          | Scroll Docs (DOWN)       |
| **PageUp**            | Scroll Docs (UP)         |

## LSP
Você deve ativar seus **LSP**s em `lua/config/lsp.lua`, adicionando o nome 
deles ao array `servers`. A instalação dos **LSP**s é **manual**.
