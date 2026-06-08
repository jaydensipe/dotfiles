{ pkgs, ...}:

{
    services = {
        displayManager.gdm.enable = true;
        desktopManager.gnome.enable = true;
        fstrim.enable = true;
        power-profiles-daemon.enable = false;
        xserver = {
            enable = true;
            excludePackages = with pkgs; [
                xterm
            ];
        };

    };

    zramSwap = {
        enable = true;  
        algorithm = "lz4";
        memoryPercent = 50;
    };
}
