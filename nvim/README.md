# NEOVIM

## Build Neovim from sources
https://github.com/neovim/neovim/wiki/Building-Neovim
<br /><br /><br />

## LSP config

For Javascript (and React): 
```npm install -g typescript typescript-language-server```
<br />

For Graphql: 
```npm install -g graphql-language-service-cli```
<br />

For CSS and HTML:
```npm install -g vscode-langservers-extracted```
<br />

For Lua:
<br />
https://github.com/sumneko/lua-language-server
<br />

In init.vim:
<br />
with lua.heredoc: <i>lua << EOF {...} EOF</i>
```
require'lspconfig'.tsserver.setup{}
require'lspconfig'.graphql.setup{}
require'lspconfig'.cssls.setup{}
require'lspconfig'.html.setup{}

local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_clients_capabilities())

local servers = { 'tsserver', 'graphql', 'cssls', 'html' }

for _, server in ipairs(servers) do
  lspcongig[server].setup {
    capabilities = capabilities
  }
end
```
