{ pkgs, ... }:

{
  hardware.uinput.enable = true;

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

  xdg.terminal-exec = {
    enable = true;
    settings.default = [ "ghostty.desktop" ];
  };

  zramSwap = {
    enable = true;
    algorithm = "lz4";
    memoryPercent = 50;
  };
}
