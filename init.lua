-- Configuração do gerenciador de plugins vim-plug
vim.cmd([[
call plug#begin()

"" NVIM THEMES""""""""""""""""""""""""""""""""""""
Plug 'maxmx03/fluoromachine.nvim'
Plug 'scottmckendry/cyberdream.nvim'
Plug 'slugbyte/lackluster.nvim'
Plug 'sainnhe/sonokai'
Plug 'arzg/vim-colors-xcode'
Plug 'whatyouhide/vim-gotham'
Plug 'darkvoid-theme/darkvoid.nvim'
Plug 'ishan9299/nvim-solarized-lua'

"" NVIM ACCESSORIES

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'





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

