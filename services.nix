{ config, pkgs, ...}:

{
 nix.gc = {
  automatic = true;
  dates = "00:00";
 };
 systemd = {
  services = {
   intelvfs = {
    wantedBy = [ "multi-user.target" ];
    before = [ "libvirtd.service" ];
    description = "Creates Virtual Functions on the intel NIC";
    serviceConfig = {
     Type = "oneshot";
     User = "root";
     ExecStart = ''${pkgs.bash}/bin/bash -c "echo 7 > /sys/class/net/enp0s0f0/device/sriov_numvfs"'';
     ExecStop = ''${pkgs.bash}/bin/bash -c "echo 0 > /sys/class/net/enp0s0f0/device/sriov_numvfs"'';
     RemainAfterExit = "true";
    };
   };
  };
 };
 services = {
  fstrim = {
   enable = true;
   interval = "weekly";
  };
  # List services that you want to enable:
  xserver = {
    enable = false;
  };
  openssh = {
    enable = true;
    passwordAuthentication = false;
    startWhenNeeded = true;
  };
  avahi = {
    nssmdns = true;
    enable = true;
    ipv4 = true;
    ipv6 = true;
    extraServiceFiles = { 
      ssh = "${pkgs.avahi}/etc/avahi/services/ssh.service";
      sftp-ssh = "${pkgs.avahi}/etc/avahi/services/sftp-ssh.service";
    };
    publish = {
      enable = true;
      addresses = true;
      workstation = true;
      hinfo = true;
      userServices = true;
    };
   };
 };
}
