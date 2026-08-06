{ config, pkgs, inputs, ... }: 
{
  # Git 
  programs.git = { 
    enable = true;
    settings = {
      user = {
        name = "Landen Parke";
        email = "eddisonparke@gmail.com";
      };
      init.defaultBranch = "main";
    };
  };
  
  programs.gh.enable = true;
}