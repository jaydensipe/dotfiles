{ pkgs, ...}:

{
    # Modules
    programs = {  
        git.enable = true;
    };

    # Fallback
    environment.systemPackages = with pkgs; [
        gh
        gnome-tweaks
    ];		

    # Gnome Exclusions
    environment.gnome.excludePackages = with pkgs; [
        gnome-calendar
        gnome-contacts
        gnome-maps
        gnome-music
        gnome-tour
        simple-scan
        snapshot
        yelp
    ];	
}
