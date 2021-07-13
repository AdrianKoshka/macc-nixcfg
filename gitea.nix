{ config, ...}:

{
 containers.gitTea = {
  ephemeral = true;
  autoStart = true;
  interfaces = [
    "enp0s0f0v0"
  ];
  bindMounts = {
   "/var/lib/gitea" = {
    hostPath = "/var/containers/gitea/";
    isReadOnly = false;
   };
  };
  config = { config, pkgs, ... }: {
   networking = {
     hostName = "gitea";
     domain = "home.arpa";
     nameservers = [
      "192.168.10.219"
      "192.168.10.1"
      "1.1.1.1"
     ];
     firewall = { 
      enable = true;
      allowedTCPPorts = [
       22
       3000
       5353
      ];
      allowedUDPPorts = [
       22
       3000
       5353
      ];
     };
     useDHCP = false;
     defaultGateway = "192.168.10.1";
     interfaces = { 
      enp0s0f0v0 = {
       useDHCP = false;
       ipv4.addresses = [
        {
         address = "192.168.10.253";
         prefixLength = 24;
        }
       ];
      };
     };
   };
   services = {
    gitea = {
     enable = true;
     domain = "gitea.local";
     rootUrl = "http://gitea.local:3000";
     httpPort = 3000;
     ssh = {
      enable = true;
      clonePort = 22;
     };
    };
    openssh = {
     enable = true;
     passwordAuthentication = false;
     permitRootLogin = "no";
     startWhenNeeded = true;
     hostKeys = [
      {
       path = "/var/lib/gitea/host_keys/ssh_host_ed25519_key";
       type = "ed25519";
      }
      {
       path = "/var/lib/gitea/host_keys/ssh_host_rsa_key";
       type = "rsa";
      }
     ];
    };
    avahi = {
     nssmdns = true;
     enable = true;
     ipv4 = true;
     ipv6 = true;
     publish = {
      enable = true;
      addresses = true;
      workstation = true;
      hinfo = true;
      userServices = true;
     };
    };
   };
  };
 };
}
