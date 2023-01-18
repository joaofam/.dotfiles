local set = vim.opt
local cmd = vim.api.nvim_command

cmd('autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=grey') -- to Show whitespace, MUST be inserted BEFORE the colorscheme command

vim.notify = require("notify")
-- THEME --
vim.cmd('colorscheme dracula')

-- CONFIGS --
set.guifont = 'DroidSansMono Nerd Font 11'
set.list = false -- show whitespace
set.listchars = {
    nbsp = '⦸', -- CIRCLED REVERSE SOLIDUS (U+29B8, UTF-8: E2 A6 B8)
    extends = '»', -- RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00BB, UTF-8: C2 BB)
    precedes = '«', -- LEFT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00AB, UTF-8: C2 AB)
    tab = '▷─', -- WHITE RIGHT-POINTING TRIANGLE (U+25B7, UTF-8: E2 96 B7) + BOX DRAWINGS HEAVY TRIPLE DASH HORIZONTAL (U+2505, UTF-8: E2 94 85)
    trail = '•', -- BULLET (U+2022, UTF-8: E2 80 A2)
    space = ' '
}
set.fillchars = {
    diff = '∙', -- BULLET OPERATOR (U+2219, UTF-8: E2 88 99)
    eob = ' ', -- NO-BREAK SPACE (U+00A0, UTF-8: C2 A0) to suppress ~ at EndOfBuffer
    fold = '·', -- MIDDLE DOT (U+00B7, UTF-8: C2 B7)
    vert = ' ' -- remove ugly vertical lines on window division
}
set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4
set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true
set.splitbelow = true
set.splitright = true
set.wrap = false
set.scrolloff = 2
set.fileencoding = 'utf-8'
set.termguicolors = true
set.relativenumber = true
set.cursorline = true
set.hidden = true
set.smarttab = true
set.scrolloff = 1 -- when scrolling, keep cursor 1 lines away from screen border
set.sidescrolloff = 2 -- keep 30 columns visible left and right of the cursor at all times
set.undofile = true
set.syntax = 'ON'
set.mouse = "a"
set.number = true
set.laststatus = 2 -- always show status line
-- vim.cmd("colorscheme duskfox")

-- patterns to ignore during file-navigation
set.wildignore = set.wildignore + '*.o,*.rej,*.so'
-- remove whitespace on save
cmd([[au BufWritePre * :%s/\s\+$//e]])
-- faster scrolling
set.lazyredraw = true
-- don't auto commenting new lines
cmd([[au BufEnter * set fo-=c fo-=r fo-=o]])
