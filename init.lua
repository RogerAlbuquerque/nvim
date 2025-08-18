-- Configuração do gerenciador de plugins vim-plug
vim.cmd([[
call plug#begin()

"" NVIM THEMES""""""""""""""""""""""""""""""""""""
Plug 'scottmckendry/cyberdream.nvim'
Plug 'slugbyte/lackluster.nvim'
Plug 'sainnhe/sonokai'
Plug 'arzg/vim-colors-xcode'
Plug 'whatyouhide/vim-gotham'
Plug 'ishan9299/nvim-solarized-lua'

"" NVIM ACCESSORIES

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
Plug 'jiangmiao/auto-pairs'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'mfussenegger/nvim-jdtls'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
call plug#end()
]])





-- Configurações gerais
vim.o.syntax = "on"       -- Habilitar highlight de sintaxe
vim.o.number = true       -- Ativar números nas linhas
vim.o.tabstop = 4         -- Tabulação com 4 espaços
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true    -- Converter tab para espaços
vim.o.smarttab = true
vim.o.smartindent = true  -- Indentação automática
vim.o.incsearch = true    -- Busca incremental
vim.o.ignorecase = true   -- Ignorar maiúsculas/minúsculas na busca
vim.o.smartcase = true    -- Considerar maiúsculas se existirem na busca
vim.o.scrolloff = 8       -- Manter 8 linhas de margem ao rolar
vim.o.updatetime = 100    -- Atualização rápida
vim.o.encoding = "utf-8"  -- Codificação UTF-8
vim.o.backup = false      -- Não criar arquivos de backup
vim.o.writebackup = false -- Não manter arquivos de backup
vim.o.splitright = true   -- Dividir janelas para a direita
vim.o.splitbelow = true   -- Dividir janelas para baixo
vim.o.autoread = true     -- Atualizar arquivos modificados externamente
vim.cmd("filetype plugin indent on")

vim.opt.termguicolors = true


-- REMAPS
vim.api.nvim_set_keymap('n', 'tn', ':bn<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'tb', ':bp<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-t>', ':terminal<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'ti', 'gg=G``', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'tc', ':q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'tfc', ':q!<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-d>', 'viw', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-S-y>', '"+yy', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-y>', '"+y', { noremap = true, silent = true })





-- ColorScheme Default ----------------------------------------------------------------------------------------


 vim.cmd("colorscheme solarized-flat")
-- vim.cmd("colorscheme gotham")
-- vim.cmd("colorscheme lackluster")
-- vim.cmd("colorscheme cyberdream")
-- vim.cmd("colorscheme sonokai")
-- vim.cmd("colorscheme xcodedarkhc")




-- Habilitar cores no terminal --------------------------------------------------------------------------------
vim.o.termguicolors = true
vim.cmd([[
hi Normal guibg=NONE ctermbg=NONE
hi NormalNC guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE

 highlight LineNr guifg=#747474
]])


-- AirLine ----------------------------------------------------------------------------------------------------
vim.g['airline#extensions#tabline#enabled'] = 1
vim.g.airline_powerline_fonts = 1





--
--
--
-- Comandos para trocar/restaurar imagem de fundo no Windows
vim.cmd([[
au VimEnter * silent !powershell.exe -ExecutionPolicy Bypass -File 'C:\Users\Roger\set-bg.ps1'
au VimLeave * silent !powershell.exe -ExecutionPolicy Bypass -File 'C:\Users\Roger\reset-bg.ps1'
]])

















-- TELESCOPE KEYMAPS----------------------------------------------------------------------------------------

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })














-- COC CONFIGURATIONS -----------------------------
--

-- COC PLUGINS++++++++++++++++++++++++++++++++++++++++++++++
vim.g.coc_global_extensions = {
  'coc-explorer',
  'coc-tsserver',     -- JS/TS Support
  'coc-eslint',       -- Linting com ESLint
  'coc-prettier',     -- Formatação automática com Prettier
  'coc-json',         -- Suporte para JSON (útil para package.json)
  'coc-html',         -- Suporte para HTML (importante para JSX/TSX)
  'coc-css',          -- Suporte para CSS (importante para styled-components e Tailwind)
  'coc-emmet',        -- Expansões rápidas para HTML e JSX
  'coc-yaml',         -- Suporte para arquivos YAML (útil para configs)
  'coc-snippets',      -- Suporte a snippets
}



-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--
--
---------------------------------------------------------------------------------------------------------------------
-- Atalho para abrir o Coc Explorer
--vim.api.nvim_set_keymap('n', '<space>e', ':CocCommand explorer<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>e', '<Cmd>CocCommand explorer<CR>', { noremap = true, silent = true })
-- Configuração dos presets do Coc Explorer
vim.g.coc_explorer_global_presets = {
  [".vim"] = {
    ["root-uri"] = "~/.vim",
  },
  ["cocConfig"] = {
    ["root-uri"] = "~/.config/coc",
  },
  ["tab"] = {
    position = "tab",
    ["quit-on-open"] = true,
  },
  ["tab:$"] = {
    position = "tab:$",
    ["quit-on-open"] = true,
  },
  ["floating"] = {
    position = "floating",
    ["open-action-strategy"] = "sourceWindow",
  },
  ["floatingTop"] = {
    position = "floating",
    ["floating-position"] = "center-top",
    ["open-action-strategy"] = "sourceWindow",
  },
  ["floatingLeftside"] = {
    position = "floating",
    ["floating-position"] = "left-center",
    ["floating-width"] = 50,
    ["open-action-strategy"] = "sourceWindow",
  },
  ["floatingRightside"] = {
    position = "floating",
    ["floating-position"] = "right-center",
    ["floating-width"] = 50,
    ["open-action-strategy"] = "sourceWindow",
  },
  ["simplify"] = {
    ["file-child-template"] = "[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]",
  },
  ["buffer"] = {
    sources = { { name = "buffer", expand = true } },
  },
}

-- Atalhos para abrir o Coc Explorer com diferentes presets
vim.api.nvim_set_keymap('n', '<space>ed', ':CocCommand explorer --preset .vim<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>ef', ':CocCommand explorer --preset floating<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>ec', ':CocCommand explorer --preset cocConfig<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>eb', ':CocCommand explorer --preset buffer<CR>', { noremap = true, silent = true })

-- Listar todos os presets disponíveis
vim.api.nvim_set_keymap('n', '<space>el', ':CocList explPresets<CR>', { noremap = true, silent = true })

----------------------------------------------------------------------------------------------------------------------------------

--
--
--
--
--
-- Some servers have issues with backup files, see #649
vim.opt.backup = false
vim.opt.writebackup = false

-- Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
-- delays and poor user experience
vim.opt.updatetime = 300

-- Always show the signcolumn, otherwise it would shift the text each time
-- diagnostics appeared/became resolved
vim.opt.signcolumn = "yes"

local keyset = vim.keymap.set
-- Autocomplete
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

-- Use Tab for trigger completion with characters ahead and navigate
-- NOTE: There's always a completion item selected by default, you may want to enable
-- no select by setting `"suggest.noselect": true` in your configuration file
-- NOTE: Use command ':verbose imap <tab>' to make sure Tab is not mapped by
-- other plugins before putting this into your config
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

-- Make <CR> to accept selected completion item or notify coc.nvim to format
-- <C-g>u breaks current undo, please make your own choice
keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)

-- Use <c-j> to trigger snippets
keyset("i", "<c-j>", "<Plug>(coc-snippets-expand-jump)")
-- Use <c-space> to trigger completion
keyset("i", "<c-space>", "coc#refresh()", {silent = true, expr = true})

-- Use `[g` and `]g` to navigate diagnostics
-- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
keyset("n", "[g", "<Plug>(coc-diagnostic-prev)", {silent = true})
keyset("n", "]g", "<Plug>(coc-diagnostic-next)", {silent = true})

-- GoTo code navigation
keyset("n", "gd", "<Plug>(coc-definition)", {silent = true})
keyset("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
keyset("n", "gi", "<Plug>(coc-implementation)", {silent = true})
keyset("n", "gr", "<Plug>(coc-references)", {silent = true})


-- Use K to show documentation in preview window
function _G.show_docs()
    local cw = vim.fn.expand('<cword>')
    if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        vim.api.nvim_command('h ' .. cw)
    elseif vim.api.nvim_eval('coc#rpc#ready()') then
        vim.fn.CocActionAsync('doHover')
    else
        vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end
keyset("n", "K", '<CMD>lua _G.show_docs()<CR>', {silent = true})


-- Highlight the symbol and its references on a CursorHold event(cursor is idle)
vim.api.nvim_create_augroup("CocGroup", {})
vim.api.nvim_create_autocmd("CursorHold", {
    group = "CocGroup",
    command = "silent call CocActionAsync('highlight')",
    desc = "Highlight symbol under cursor on CursorHold"
})
vim.cmd [[
  autocmd CursorHold * silent call CocActionAsync('highlight')
]]


-- Symbol renaming
keyset("n", "<leader>rn", "<Plug>(coc-rename)", {silent = true})


-- Formatting selected code
keyset("x", "<leader>f", "<Plug>(coc-format-selected)", {silent = true})
keyset("n", "<leader>f", "<Plug>(coc-format-selected)", {silent = true})


-- Setup formatexpr specified filetype(s)
vim.api.nvim_create_autocmd("FileType", {
    group = "CocGroup",
    pattern = "typescript,json",
    command = "setl formatexpr=CocAction('formatSelected')",
    desc = "Setup formatexpr specified filetype(s)."
})

-- Apply codeAction to the selected region
-- Example: `<leader>aap` for current paragraph
local opts = {silent = true, nowait = true}
keyset("x", "<leader>a", "<Plug>(coc-codeaction-selected)", opts)
keyset("n", "<leader>a", "<Plug>(coc-codeaction-selected)", opts)

-- Remap keys for apply code actions at the cursor position.
keyset("n", "<leader>ac", "<Plug>(coc-codeaction-cursor)", opts)
-- Remap keys for apply source code actions for current file.
keyset("n", "<leader>as", "<Plug>(coc-codeaction-source)", opts)
-- Apply the most preferred quickfix action on the current line.
keyset("n", "<leader>qf", "<Plug>(coc-fix-current)", opts)

-- Remap keys for apply refactor code actions.
keyset("n", "<leader>re", "<Plug>(coc-codeaction-refactor)", { silent = true })
keyset("x", "<leader>r", "<Plug>(coc-codeaction-refactor-selected)", { silent = true })
keyset("n", "<leader>r", "<Plug>(coc-codeaction-refactor-selected)", { silent = true })

-- Run the Code Lens actions on the current line
keyset("n", "<leader>cl", "<Plug>(coc-codelens-action)", opts)


-- Map function and class text objects
-- NOTE: Requires 'textDocument.documentSymbol' support from the language server
keyset("x", "if", "<Plug>(coc-funcobj-i)", opts)
keyset("o", "if", "<Plug>(coc-funcobj-i)", opts)
keyset("x", "af", "<Plug>(coc-funcobj-a)", opts)
keyset("o", "af", "<Plug>(coc-funcobj-a)", opts)
keyset("x", "ic", "<Plug>(coc-classobj-i)", opts)
keyset("o", "ic", "<Plug>(coc-classobj-i)", opts)
keyset("x", "ac", "<Plug>(coc-classobj-a)", opts)
keyset("o", "ac", "<Plug>(coc-classobj-a)", opts)


-- Remap <C-f> and <C-b> to scroll float windows/popups
---@diagnostic disable-next-line: redefined-local
local opts = {silent = true, nowait = true, expr = true}
keyset("n", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', opts)
keyset("n", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', opts)
keyset("i", "<C-f>",
       'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(1)<cr>" : "<Right>"', opts)
keyset("i", "<C-b>",
       'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(0)<cr>" : "<Left>"', opts)
keyset("v", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', opts)
keyset("v", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', opts)


-- Use CTRL-S for selections ranges
-- Requires 'textDocument/selectionRange' support of language server
-- keyset("n", "<C-s>", "<Plug>(coc-range-select)", {silent = true})
-- keyset("x", "<C-s>", "<Plug>(coc-range-select)", {silent = true})


-- Add `:Format` command to format current buffer
vim.api.nvim_create_user_command("Format", "call CocAction('format')", {})

-- " Add `:Fold` command to fold current buffer
vim.api.nvim_create_user_command("Fold", "call CocAction('fold', <f-args>)", {nargs = '?'})

-- Add `:OR` command for organize imports of the current buffer
vim.api.nvim_create_user_command("OR", "call CocActionAsync('runCommand', 'editor.action.organizeImport')", {})

-- Add (Neo)Vim's native statusline support
-- NOTE: Please see `:h coc-status` for integrations with external plugins that
-- provide custom statusline: lightline.vim, vim-airline
vim.opt.statusline:prepend("%{coc#status()}%{get(b:,'coc_current_function','')}")

-- Mappings for CoCList
-- code actions and coc stuff
---@diagnostic disable-next-line: redefined-local
local opts = {silent = true, nowait = true}
-- Show all diagnostics
keyset("n", "<space>a", ":<C-u>CocList diagnostics<cr>", opts)
-- Manage extensions
-- keyset("n", "<space>e", ":<C-u>CocList extensions<cr>", opts)
-- Show commands
keyset("n", "<space>c", ":<C-u>CocList commands<cr>", opts)
-- Find symbol of current document
keyset("n", "<space>o", ":<C-u>CocList outline<cr>", opts)
-- Search workspace symbols
keyset("n", "<space>s", ":<C-u>CocList -I symbols<cr>", opts)
-- Do default action for next item
keyset("n", "<space>j", ":<C-u>CocNext<cr>", opts)
-- Do default action for previous item
keyset("n", "<space>k", ":<C-u>CocPrev<cr>", opts)
-- Resume latest coc list
keyset("n", "<space>p", ":<C-u>CocListResume<cr>", opts)
