nnoremap <leader>o <Cmd>lua require'jdtls'.organize_imports()<CR>
nnoremap <leader>i <Cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap gD <Cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap gd <Cmd>lua vim.lsp.buf.definition()<CR>
nnoremap gi <Cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap gK <Cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap gs <Cmd>lua vim.lsp.buf.signature_help()<CR>

nnoremap <leader>af <Cmd>lua require"jdtls".code_action()<CR>
nnoremap <leader>ah <Cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <leader>ar <Cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <leader>ai <Cmd>lua vim.lsp.buf.incoming_calls()<CR>
nnoremap <leader>ao <cmd>lua vim.lsp.buf.outgoing_calls()<CR>



