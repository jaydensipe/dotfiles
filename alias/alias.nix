{
	environment.shellAliases = {
		rebuild 	= "sudo nixos-rebuild switch";
		
		# Modules
		alias 		= "nvim ~/Projects/dotfiles/alias/alias.nix";
		audio 		= "nvim ~/Projects/dotfiles/audio/audio.nix";
		boot-loader	= "nvim ~/Projects/dotfiles/boot-loader/boot.nix";
		locale 		= "nvim ~/Projects/dotfiles/locale/locale.nix";
		networking 	= "nvim ~/Projects/dotfiles/networking/networking.nix";
		system-pkg 	= "nvim ~/Projects/dotfiles/packages/system/system-pkg.nix";
		services 	= "nvim ~/Projects/dotfiles/packages/services/services.nix";
	};
}
