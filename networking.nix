{ config, ... }:

{
 networking = {
  hostName = "macc"; # Define your hostname.
  useDHCP = false;
  firewall.enable = false;
  networkmanager = {
   enable = true;
  };
  interfaces = {
    enp0s0f0.useDHCP = false;
    enp0s0f1.useDHCP = false;
    enp0s0f2.useDHCP = false;
    enp0s0f3.useDHCP = false;
    eth4.useDHCP = false;
    eth5.useDHCP = false;
    eth6.useDHCP = false;
    eth7.useDHCP = false;
  };
 };
}
