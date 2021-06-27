{ config, pkgs, ... }:

{
 boot = {
  tmpOnTmpfs = true;
  kernelPackages = pkgs.linuxPackages_latest;
  blacklistedKernelModules = [
   "igbvf"
  ];
  loader = {
    systemd-boot.enable = false;
    efi = {
      canTouchEfiVariables = true;
    };
    grub = { 
      enable = true;
      efiSupport = true;
      efiInstallAsRemovable = false;
      device = "nodev";
      theme = pkgs.nixos-grub2-theme;
    };
  };
 };
}
