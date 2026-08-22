{pkgs, config, ... }:
{
  services.mako = {
    enable = true;
      settings = {
      "actionable=true" = {
        anchor = "top-left";
      };
      actions = true;
      anchor = "top-right";
      background-color = "#373737";
      border-color = "#232323";
      border-radius = 0;
      default-timeout = 3000;
      font = "monospace 10";
      height = 100;
      icons = true;
      ignore-timeout = false;
      layer = "top";
      margin = 10;
      markup = true;
      width = 300;
    };
  };
}
