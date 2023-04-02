local lsp = require('lsp-zero')

lsp.preset("recommended")

lsp.ensure_installed({
    --'phpactor',
    --'tsserver',
    'rust_analyzer',
})


-- Fix Undefined global 'vim'
lsp.configure('lua-language-server', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

--lsp.on_attach(function(client, bufnr)
--  lsp.default_keymaps({buffer = bufnr})
--end)

local cmp = require('cmp')
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<CR>'] = cmp.mapping.confirm({ select = true }),
  --["<C-Space>"] = cmp.mapping.complete(),
})

--cmp_mappings['C-y'] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

-- (Optional) Configure lua language server for neovim
--require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})
