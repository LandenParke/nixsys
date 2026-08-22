{pkgs, config, ... }:
{
  programs.wofi = {
    enable = true;
    settings = {
      allow_images = true;
      ignore_metadata = true;
      no_actions = true;
    };
  };
}
