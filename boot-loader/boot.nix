{ pkgs, ...}:

{
    boot.loader.limine = {
        enable = true;
        extraEntries = ''
            /Windows
            protocol: efi
            path: uuid(1cc43541-4410-4079-8a8e-a9e4d73e9b41):/EFI/Microsoft/Boot/bootmgfw.efi
                                                              '';

    };
    boot.loader.efi.canTouchEfiVariables = true;
    boot.kernelPackages = pkgs.linuxPackages_latest;
}
