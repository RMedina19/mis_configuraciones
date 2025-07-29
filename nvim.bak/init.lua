-- General config source: https://poltora.dev/neovim-for-developers/
-- Theme source: https://github.com/catppuccin/nvim
local vim = vim
local Plug = vim.fn['plug#']

-- Plug-ins
vim.call('plug#begin')

Plug('kyazdani42/nvim-tree.lua')
Plug('kyazdani42/nvim-web-devicons')
Plug('romgrk/barbar.nvim')
Plug('nvim-lualine/lualine.nvim')
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug('ray-x/web-tools.nvim')
Plug('prettier/vim-prettier', {['do'] = 'yarn install --frozen-lockfile --production' })
Plug('catppuccin/nvim', { ['as'] = 'catppuccin' })
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim')
Plug('neovim/nvim-lspconfig')
vim.call('plug#end')

home = os.getenv("HOME")
package.path = home .. "/.config/nvim/?.lua;" .. package.path

require "common"
require "vimtree"
require "barbar"
require "lua_line"
require "theme"
require"lsp"
require'web-tools'.setup({
  keymaps = {
    rename = nil,  -- by default use same setup of lspconfig
    repeat_rename = '.', -- . to repeat
  },
  hurl = {  -- hurl default
    show_headers = false, -- do not show http headers
    floating = false,   -- use floating windows (need guihua.lua)
    json5 = false,      -- use json5 parser require json5 treesitter
    formatters = {  -- format the result by filetype
      json = { 'jq' },
      html = { 'prettier', '--parser', 'html' },
    },
  },
})

