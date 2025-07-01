return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim'
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      function(server_name)
        local lspconfig = require("lspconfig")
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        lspconfig[server_name].setup({ capabilities = capabilities })
      end
    })

    local map = vim.keymap.set
    map('n', 'K', vim.lsp.buf.hover)
    map('n', 'gf', vim.lsp.buf.format)
    map('n', 'gr', vim.lsp.buf.references)
    map('n', 'gd', vim.lsp.buf.definition)
    map('n', 'gD', vim.lsp.buf.declaration)
    map('n', 'gi', vim.lsp.buf.implementation)
    map('n', 'gt', vim.lsp.buf.type_definition)
    map('n', 'gn', vim.lsp.buf.rename)
    map('n', 'ga', vim.lsp.buf.code_action)
    map('n', 'ge', vim.diagnostic.open_float)
    map('n', 'g]', vim.diagnostic.goto_next)
    map('n', 'g[', vim.diagnostic.goto_prev)

    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = false }
    )

    local diag_augroup = vim.api.nvim_create_augroup("LspDiagnosticsOnHover", {})
    vim.api.nvim_clear_autocmds({ group = diag_augroup, buffer = bufnr })
    vim.api.nvim_create_autocmd("CursorHold", {
      group = diag_augroup,
      buffer = bufnr,
      callback = function()
        vim.diagnostic.open_float(nil, {
          focusable = false,
          scope = "cursor",
          border = "rounded",
        })
      end,
    })

    vim.cmd [[
      set updatetime=500
      highlight LspReferenceText  cterm=underline ctermfg=1 ctermbg=8 gui=underline guifg=#A00000 guibg=#104040
      highlight LspReferenceRead  cterm=underline ctermfg=1 ctermbg=8 gui=underline guifg=#A00000 guibg=#104040
      highlight LspReferenceWrite cterm=underline ctermfg=1 ctermbg=8 gui=underline guifg=#A00000 guibg=#104040
      augroup lsp_document_highlight
        autocmd!
        autocmd CursorHold,CursorHoldI * lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved,CursorMovedI * lua vim.lsp.buf.clear_references()
      augroup END
    ]]
  end
}
