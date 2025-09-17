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
    -- 以下が必要
    -- brew tap laishulu/homebrew
    -- brew install macism
    use {
        "keaising/im-select.nvim",
        config = function()
        require("im_select").setup({
            -- ノーマルモードに戻ったら英数（ABC）に戻す
            default_im_select = "com.google.inputmethod.Japanese.Roman",
            -- macOSでは内部的に macism を呼ぶ
            -- 明示したい場合は以下を有効化
            -- default_command = "macism",

            set_default_events = { "InsertEnter", "InsertLeave", "CmdlineLeave" },
            set_previous_events = {},  -- もしくは nil
            async_switch_im = true,
        })
        end,
    }
end)