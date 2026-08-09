{pkgs, config, ... }:
{
  services.swayidle = {
    enable = true;
    systemdTarget = "sway-session.target";
    events = {
      before-sleep =  "${pkgs.hyprlock}/bin/hyprlock";
      lock = "${pkgs.hyprlock}/bin/hyprlock"; 
    };
    timeouts = [
            { timeout = 300; command = "${pkgs.systemd}/bin/systemctl suspend";}
          ];
  
  };
}
