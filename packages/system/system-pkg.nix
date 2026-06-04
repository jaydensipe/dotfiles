{ pkgs, ...}:

{
	nixpkgs.config.allowUnfree = true;

	# Modules
	programs.git.enable = true;
	programs.neovim.enable = true;

	# Fallback
	environment.systemPackages = with pkgs; [
		google-chrome
		gh
		gnome-tweaks
  	];		
	
	# Gnome Exclusions
	environment.gnome.excludePackages = with pkgs; [
		gnome-tour
		simple-scan
  	];	
}
