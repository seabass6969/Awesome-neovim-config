local o = vim.o

o.encoding = 'UTF-8'

o.compatible = false

o.tabstop = 4
o.softtabstop = 4 
o.shiftwidth = 4  
o.expandtab = true   
o.updatetime = 250

o.nu = true
o.swapfile = false
o.backup = false
o.wrap = false

o.relativenumber = true
o.autoread = true
o.completeopt=menuone,noinsert,noselect
--[[
o.complete+=kspell
o.modeline
o.hidden
o.showcmd
o.wildmenu

o.smartcase
o.incsearch
o.nohlsearch
o.spell
]]--
-- o.ignorecase
-- o.spelllang=en_gb,fr,cjk
o.showtabline=2
o.termguicolors = true
o.wrap = true

-- filetype plugin on
-- color
vim.cmd[[colorscheme dracula]]

