{ config, ... }:

{
 # Set your time zone.
 time.timeZone = "US/New_York";

 # Select internationalisation properties.
 i18n.defaultLocale = "en_US.UTF-8";
 console = {
   font = "Lat2-Terminus16";
   keyMap = "us";
 };

 # Some programs need SUID wrappers, can be configured further or are
 # started in user sessions.
 programs.mtr.enable = true;
 programs.gnupg.agent = {
   enable = true;
   enableSSHSupport = true;
 };
}
