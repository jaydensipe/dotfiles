{
    environment.shellAliases = {
        cd          = "z";
        ocd         = "ls -lat";
        rebuild 	= "sudo nixos-rebuild switch";

        # Modules
        alias 		= "nvim ~/Projects/dotfiles/alias/alias.nix";
        audio 		= "nvim ~/Projects/dotfiles/audio/audio.nix";
        boot-loader	= "nvim ~/Projects/dotfiles/boot-loader/boot.nix";
        locale 		= "nvim ~/Projects/dotfiles/locale/locale.nix";
        networking 	= "nvim ~/Projects/dotfiles/networking/networking.nix"; 
        services 	= "nvim ~/Projects/dotfiles/services/services.nix";
        system-pkg 	= "nvim ~/Projects/dotfiles/packages/system/system-pkg.nix";
        usr-pkg 	= "nvim ~/Projects/dotfiles/packages/usr/usr-pkg.nix";

        # Neovim Config
        ghoc        = "nvim ~/Projects/dotfiles/packages/usr/ghostty/config.ghostty";
        nvc         = "nvim ~/Projects/dotfiles/packages/usr/nvim/init.lua";
    };
}
