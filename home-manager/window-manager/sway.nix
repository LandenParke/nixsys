{pkgs, config, ... }: 
{
  services.swayosd = {
    enable = true;
    topMargin = 0.9;
  };
  
  wayland.windowManager.sway = {
    enable = true;
    config = rec {
      right = "l";
      left = "j";
      up = "i";
      down = "k";
      modifier = "Mod4";
      terminal = "kitty";
      menu = "wofi";

      bars = [ { command = "waybar";} ]; # Waybar
      window = {
        titlebar = false; # remove title bars
      };

keybindings = {
  # Basics
  "${modifier}+Return" = "exec ${pkgs.kitty}/bin/kitty";
  "${modifier}+q" = "kill";
  "${modifier}+d" = "exec ${pkgs.wofi}/bin/wofi --show drun";
  "${modifier}+Shift+c" = "reload";
  "${modifier}+Shift+e" = "exec swaynag -t warning -m 'You pressed the exit shortcut. Do you really want to exit sway? This will end your Wayland session.' -B 'Yes, exit sway' 'swaymsg exit'";

  # Moving around (focus)
  "${modifier}+${left}" = "focus left";
  "${modifier}+${down}" = "focus down";
  "${modifier}+${up}" = "focus up";
  "${modifier}+${right}" = "focus right";
  "${modifier}+Left" = "focus left";
  "${modifier}+Down" = "focus down";
  "${modifier}+Up" = "focus up";
  "${modifier}+Right" = "focus right";

  # Moving around (move container)
  "${modifier}+Shift+${left}" = "move left";
  "${modifier}+Shift+${down}" = "move down";
  "${modifier}+Shift+${up}" = "move up";
  "${modifier}+Shift+${right}" = "move right";
  "${modifier}+Shift+Left" = "move left";
  "${modifier}+Shift+Down" = "move down";
  "${modifier}+Shift+Up" = "move up";
  "${modifier}+Shift+Right" = "move right";

  # Workspaces
  "${modifier}+1" = "workspace number 1";
  "${modifier}+2" = "workspace number 2";
  "${modifier}+3" = "workspace number 3";
  "${modifier}+4" = "workspace number 4";
  "${modifier}+5" = "workspace number 5";
  "${modifier}+6" = "workspace number 6";
  "${modifier}+7" = "workspace number 7";
  "${modifier}+8" = "workspace number 8";
  "${modifier}+9" = "workspace number 9";
  "${modifier}+0" = "workspace number 10";

  "${modifier}+Shift+1" = "move container to workspace number 1";
  "${modifier}+Shift+2" = "move container to workspace number 2";
  "${modifier}+Shift+3" = "move container to workspace number 3";
  "${modifier}+Shift+4" = "move container to workspace number 4";
  "${modifier}+Shift+5" = "move container to workspace number 5";
  "${modifier}+Shift+6" = "move container to workspace number 6";
  "${modifier}+Shift+7" = "move container to workspace number 7";
  "${modifier}+Shift+8" = "move container to workspace number 8";
  "${modifier}+Shift+9" = "move container to workspace number 9";
  "${modifier}+Shift+0" = "move container to workspace number 10";

  # Layout stuff
  "${modifier}+b" = "splith";
  "${modifier}+v" = "splitv";
  "${modifier}+s" = "layout stacking";
  "${modifier}+w" = "layout tabbed";
  "${modifier}+e" = "layout toggle split";
  "${modifier}+f" = "fullscreen";
  "${modifier}+Shift+space" = "floating toggle";
  "${modifier}+space" = "focus mode_toggle";
  "${modifier}+a" = "focus parent";

  # Scratchpad
  "${modifier}+Shift+minus" = "move scratchpad";
  "${modifier}+minus" = "scratchpad show";

  # Layout resize mode entry keybind
  "${modifier}+r" = "mode \"resize\"";

  # Utilities (PulseAudio / playerctl / brightness / screenshot)
  # Audio Volume Controls (Sink - Output)
  "XF86AudioRaiseVolume" = "exec swayosd-client --output-volume raise";
  "XF86AudioLowerVolume" = "exec swayosd-client --output-volume lower";
  "XF86AudioMute" = "exec swayosd-client --output-volume mute-toggle";
        
  # Microphone Volume Control (Source - Input)
  "XF86AudioMicMute" = "exec swayosd-client --input-volume mute-toggle";
        
  # Caps Lock
  "--release Caps_Lock" = "exec swayosd-client --caps-lock";
        
  # Brightness Controls
  "XF86MonBrightnessUp" = "exec swayosd-client --brightness raise";
  "XF86MonBrightnessDown" = "exec swayosd-client --brightness lower";
        
  # Media Player Controls
  "XF86AudioPlay" = "exec swayosd-client --playerctl play-pause";
  "XF86AudioNext" = "exec swayosd-client --playerctl next";
  "XF86AudioPrev" = "exec swayosd-client --playerctl prev";

  "Print" = "exec ${pkgs.grim}/bin/grim -g \"$(slurp)\" - | ${pkgs.swappy}/bin/swappy -f -";
};

      defaultWorkspace = "workspace number 1";
      
      input = {
        "type:touchpad" = {
          natural_scroll = "enabled";
        };
      };

    };
  };
}
