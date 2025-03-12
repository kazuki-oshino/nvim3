-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'vim-scripts/argtextobj.vim'
    use 'vim-scripts/ReplaceWithRegister'
    use "kana/vim-operator-user"
    use 'kana/vim-operator-replace'
    use 'osyo-manga/vim-operator-stay-cursor'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
end)