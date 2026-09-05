{ self, inputs, ... }: {
flake.homeModules.landeni3 = { pkgs, lib, ... }: {
    xsession.windowManager.i3 = {
      enable = true;
      config = rec {
	modifier = "Mod4";
	gaps = {
	  inner = 5;
	  outer = 1;
	};
	colors = {
	  focused = {
	    border = "#4b5743";
	    background = "#4b5743";
	    text = "#99a194";
	    indicator = "#4b5743";
	    childBorder = "#4b5743";
	  };
	  unfocused = {
	    border = "#3c4534";
	    background = "#3c4534";
	    text = "#99a194";
	    indicator = "#3c4534";
	    childBorder = "#3c4534";
	  };
	  focusedInactive = {
	    border = "#3c4534";
	    background = "#3c4534";
	    text = "#99a194";
	    indicator = "#3c4534";
	    childBorder = "#3c4534";
	  };

	};
	keybindings = lib.mkOptionDefault {
	  "${modifier}+Return" = "exec ${pkgs.alacritty}/bin/alacritty";
          "${modifier}+q" = "kill";

	  "${modifier}+h" = "focus left";
          "${modifier}+j" = "focus down";
          "${modifier}+k" = "focus up";
          "${modifier}+l" = "focus right";

          "${modifier}+Shift+h" = "move left";
          "${modifier}+Shift+j" = "move down";
          "${modifier}+Shift+k" = "move up";
          "${modifier}+Shift+l" = "move right";

	};
      };
    };
  };
}
