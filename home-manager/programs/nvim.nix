{pkgs, config, ...}:
{
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
}
