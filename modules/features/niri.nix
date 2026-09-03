{ self, inputs, ... }: {

  flake.nixosModules.niri = { pkgs, lib, ... }: {
    programs.niri = {
      enable = true;
      package = self.packages.${pkgs.stdenv.hostPlatform.system}.myNiri;
    };
  };
  
  perSystem = { pkgs, lib,  ... }: {
    packages.myNiri = inputs.wrapper-modules.wrappers.niri.wrap {
      inherit pkgs;
      settings = {
        spawn-at-startup = [
          
        ];

        xwayland-satellite.path = lib.getExe pkgs.xwayland-satellite;

        input.keyboard = {
          xkb.layout = "us,ua";
        };

	input.touchpad = {
	  natural-scroll = {};
	};

        layout.gaps = 5;

        binds = {
       	  "Mod+Shift+E".quit = {};

	  # Hotkey overlay
	  "Mod+Shift+Slash".show-hotkey-overlay = {};

	  # Applications
	  "Mod+T".spawn = lib.getExe pkgs.alacritty;
	  "Mod+D".spawn = lib.getExe pkgs.fuzzel;
	  "Super+Alt+L".spawn = lib.getExe pkgs.waylock;

	  # Volume
	  "XF86AudioRaiseVolume" = { allow-when-locked = true; spawn-sh = "wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.1+ -l 1.0"; };
	  "XF86AudioLowerVolume" = { allow-when-locked = true; spawn-sh = "wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.1-"; };
	  "XF86AudioMute"        = { allow-when-locked = true; spawn-sh = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"; };
	  "XF86AudioMicMute"     = { allow-when-locked = true; spawn-sh = "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"; };

	  # Media
	  "XF86AudioPlay"  = { allow-when-locked = true; spawn-sh = "playerctl play-pause"; };
	  "XF86AudioPause" = { allow-when-locked = true; spawn-sh = "playerctl play-pause"; };
	  "XF86AudioStop"  = { allow-when-locked = true; spawn-sh = "playerctl stop"; };
	  "XF86AudioPrev"  = { allow-when-locked = true; spawn-sh = "playerctl previous"; };
	  "XF86AudioNext"  = { allow-when-locked = true; spawn-sh = "playerctl next"; };

	  # Brightness
	  "XF86MonBrightnessUp"   = { allow-when-locked = true; spawn-sh = "brightnessctl --class=backlight set +10%"; };
	  "XF86MonBrightnessDown" = { allow-when-locked = true; spawn-sh = "brightnessctl --class=backlight set 10%-"; };

	  # Overview
	  "Mod+O" = { repeat = false; toggle-overview = {}; };

	  # Windows
	  "Mod+Q".close-window = {};

	  # Focus movement
	  "Mod+Left".focus-column-left   = {};
	  "Mod+Down".focus-window-down   = {};
	  "Mod+Up".focus-window-up       = {};
	  "Mod+Right".focus-column-right = {};
	  "Mod+H".focus-column-left      = {};
	  "Mod+J".focus-window-down      = {};
	  "Mod+K".focus-window-up        = {};
	  "Mod+L".focus-column-right     = {};

	  # Move windows/columns
	  "Mod+Shift+Left".move-column-left   = {};
	  "Mod+Shift+Down".move-window-down   = {};
	  "Mod+Shift+Up".move-window-up       = {};
	  "Mod+Shift+Right".move-column-right = {};
	  "Mod+Shift+H".move-column-left      = {};
	  "Mod+Shift+J".move-window-down      = {};
	  "Mod+Shift+K".move-window-up        = {};
	  "Mod+Shift+L".move-column-right     = {};

	  # First/last column
	  "Mod+Home".focus-column-first      = {};
	  "Mod+End".focus-column-last        = {};
	  "Mod+Ctrl+Home".move-column-to-first = {};
	  "Mod+Ctrl+End".move-column-to-last   = {};

    	};
      };  
    };

  };
}
