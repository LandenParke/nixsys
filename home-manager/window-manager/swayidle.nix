{pkgs, config, ... }:
{
  services.swayidle = {
    enable = true;
    systemdTargets = [ "sway-session.target" ];
    events = {
      before-sleep = "${pkgs.hyprlock}/bin/hyprlock";
      lock = "${pkgs.hyprlock}/bin/hyprlock"; 
  };
    timeouts = [
	    { timeout = 600; command = "${pkgs.systemd}/bin/systemctl suspend";}
          ];
  
  };
}
