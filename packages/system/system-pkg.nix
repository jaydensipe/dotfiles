{ pkgs, ...}:

let 
    compilerPackages = with pkgs; [
        clang
        gnumake
    ];

    lspPackages = with pkgs; [
        clang-tools
        lua-language-server
        nil
    ];

    desktopPackages = with pkgs; [
        amdgpu_top
        btop
        gnome-tweaks
        numix-icon-theme-square
    ];
in
{
    # Modules
    programs = {  
        git.enable = true;
    };

    # Fallback
    environment.systemPackages = compilerPackages ++ desktopPackages ++ lspPackages;		

    # Gnome Exclusions
    environment.gnome.excludePackages = with pkgs; [
        epiphany
        gnome-calendar
        gnome-connections
        gnome-contacts
        gnome-maps
        gnome-music
        gnome-system-monitor
        gnome-tour
        simple-scan
        snapshot
        yelp
    ];	
}
