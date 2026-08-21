{pkgs, config, ... }:
{
  programs.waybar = {
    enable = true;
    settings.main = {
      modules-left = [ "sway/workspaces" ];
      modules-center = [ "clock" ];
      modules-right = [ "cpu" "temperature" "memory" "battery"];

      "sway/workspaces" = {
	disable-scroll = true;
      };

      
      "cpu" = {
	format = "CPU:{usage}%, ";
      };
     "temperature" = {
	format = "{temperatureC}°C | ";
      };
      "memory" = {
	format = "RAM:{}% | ";
      };
      "battery" = {
	format = "{capacity}%";
      };

    };
    style = "
      * {
	font-family: IBM Plex Mono;
      }
      #workspaces button {
	padding: 0 5px;
	background-color: transparent;
      }
      #workspaces button.focused, #workspaces button.active {
	background-color: #232323;
      }
      #workspaces button.urget {
	background-color: #710000;
      }
     


    "; 
  };
}
