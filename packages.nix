{ config, pkgs, ... }:

{
   nixpkgs.config = {
     allowUnfree = true;
   };
   environment.systemPackages = with pkgs; [
     vim
     wget
     htop
     git
     python39
     ncdu
     lm_sensors
     pinentry_curses
     gnupg
     pciutils
     usbutils
     openssl
     file
     unzip
     powershell
     hwloc
     cryptsetup
   ];
}
