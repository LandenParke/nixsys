{pkgs, config, ... }: {
  flake.homeModules.landenBackground = { pkgs, inputs, ... }: {
      programs.feh.enable = true;

      home.file.".wallpapers" = {
	source = "${inputs.self}/wallpapers";
	recursive = true;
      };

      home.file.".local/bin/random-wallpaper" = {
	executable = true;
	text = "#!/bin/sh\nfind \"$HOME/.wallpapers\" -type l | shuf -n 1 | xargs feh --bg-fill\n"; 
      };

      systemd.user.services.random-wallpaper = {
	Unit.Description = "Set a random wallpaper";
	Service = {
	  Type = "oneshot";
	  ExecStart = "%h/.local/bin/random-wallpaper";
	  Environment = "DISPLAY=:0";
	};
      };

      systemd.user.timers.random-wallpaper = {
	Unit.Description = "Shuffle wallpaper on a timer";
	Timer = {
	  OnBootSec = "10s";
	  OnUnitActivateSec = "30m";
	  Unit = "random-wallpaper.service";
	};
	Install.WantedBy = [ "timer.target" ];
      };
      
  };
}
