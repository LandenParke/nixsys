{pkgs, config, ...}:
{
  flake.homeModules.landenNvim = { pkgs, ... }: {
    programs.neovim = {
      enable = true;
      viAlias = true;
      vimAlias = true;
      vimdiffAlias = true;
      extraConfig = ''
        set number relativenumber cursorline
        set shiftwidth=2
        syntax on
        filetype plugin indent on
        colorscheme gruvbox-material
        :map <Up> <Nop>
        :map <Left> <Nop>
        :map <Right> <Nop>	
        :map <Down> <Nop>
      '';
      plugins = with pkgs.vimPlugins; [
        nvim-treesitter
        nvim-treesitter.withAllGrammars
        nvim-lspconfig
        plenary-nvim
        gruvbox-material
        mini-nvim
        vim-wayland-clipboard
      ];
    };
  };
}
