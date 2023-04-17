-- https://github.com/hrsh7th/nvim-cmp
return {
    "ms-jpq/coq_nvim",
    config = function()
        local lsp = require("lspconfig")
        local coq = require("coq")
        
        lsp.clangd.setup(coq.lsp_ensure_capabilities({}))
    end,
}
