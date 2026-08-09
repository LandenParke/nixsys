{pkgs, config, ... }:
{
  services.swayidle =
  let
    # Lock command
    lock = "${pkgs.hyprlock}/bin/hyplock";

    display = status: "${pkgs.sway}/bin/swaymsg 'output * power ${status}'";

  in
  {
    enable = true;
    timeouts = [
      {
        timeout = 15; # in seconds
        command = "${pkgs.libnotify}/bin/notify-send 'Locking in 5 seconds' -t 5000";
      }
      {
        timeout = 20;
        command = lock;
      }
      {
        timeout = 25;
        command = display "off";
        resumeCommand = display "on";
      }
      {
        timeout = 30;
        command = "${pkgs.systemd}/bin/systemctl suspend";
      }
    ];
    events = [
      {
        event = "before-sleep";
        # adding duplicated entries for the same event may not work
        command = (display "off") + "; " + lock;
      }
      {
        event = "after-resume";
        command = display "on";
      }
      {
        event = "lock";
        command = (display "off") + "; " + lock;
      }
      {
        event = "unlock";
        command = display "on";
      }
    ];
  };
}
