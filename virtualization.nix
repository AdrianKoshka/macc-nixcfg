{ config, ... }:

{
 virtualisation = {
   podman = {
     enable = true;
     dockerCompat = false;
   };
   libvirtd = {
    enable = true;
    qemuOvmf = true;
   };
 };
}
