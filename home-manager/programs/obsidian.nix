{
  programs.obsidian = {
    enable = true;

    vaults.notes.target = "Documents/Obsidian";

    defaultSettings = {
      app = {
	alwaysUpdateLinks = true;
	spellcheck = true;
      };
#      communityPlugins = [
#	{ name = "obsidian-excalidraw-plugin"; enable = true; }
#      ];
    };
  };
}
