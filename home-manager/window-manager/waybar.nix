{pkgs, config, ... }:
{
  programs.waybar = {
    enable = true;
    settings.main = {
      modules-left = [ "sway/workspaces" ];
      modules-center = [ "clock" ];
      modules-right = [ "cpu" "temperature" "memory" "battery" 
      
      ];
    };
  };
}
