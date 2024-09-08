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
| Keybind          | Descrição              |
|------------------|------------------------|
| **Mod + w**      | Salva o buffer atual.  |
| **Mod + q**      | Fecha o buffer atual.  |

### Insertion Mode
| Keybind (CMP)    | Descrição                |
|------------------|--------------------------|
| **Ctrl + Space** | Abre o autocomplete.     |
| **Ctrl + e**     | Cancela o autocomplete.  |
| **Enter**        | Confirma o autocomplete. |
