{ pkgs, ...}:

{
    # Modules
    programs = {  
        git.enable = true;
    };

    # Fallback
    environment.systemPackages = with pkgs; [
        amdgpu_top
        btop
        gnome-tweaks
        numix-icon-theme-square
    ];		

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
