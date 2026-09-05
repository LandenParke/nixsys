{ self, inputs, ... } : {
  flake.homeModules.landenPolybar = { pkgs, ... }: {
    services.polybar = {
      enable = true;
      script = "polybar bar &amp";
      config = {
	"bar/bottom" = {
	  bottom = true;
	  width = "100%";
	  height = "3%";
	  radius = 0;
	  modules-left = "i3";
	  modules-center = "date";
	};
	
	"module/i3" = {
	  type = "internal/i3";
	};

	"module/date" = {
	  type = "internal/date";
	  internal = 5;
	  date = "%d.%m.%y";
	  time = "%H:%M";
	  label = "%time%  %date%";
	};
      };
      settings = {
	"module/i3" = {
	  format = "<label-state> <label-mode>";
	};
      };
    };
  };
}
