{ config, pkgs, ... }:

{
 swapDevices = [ 
  { 
   device = "/dev/disk/by-partuuid/fc8c8b70-a3a8-0e47-a57d-0f67100ac270";
   randomEncryption = {
    cipher = "aes-xts-plain64";
    enable = true;
    source = "/dev/random";
   };
  }
 ];
}
