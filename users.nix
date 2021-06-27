{ config, pkgs, ... }:

{
 users.users.alc = {
  isNormalUser = true;
  extraGroups = [ "wheel" "networkmanager" "libvirtd" ]; # Enable ‘sudo’ for the user.
  openssh = { 
    authorizedKeys.keys = [
     "ecdsa-sha2-nistp521 AAAAE2VjZHNhLXNoYTItbmlzdHA1MjEAAAAIbmlzdHA1MjEAAACFBACxewoWf/RGhUfbJ8DYk8fLmdW4FfSwTIkyFkjlYdxV24lqVOTopTQP0tHIbARd8WMKxKiLyo6Eb/YtAHnPYSJvlwADin9ahimF72BdQ6/3o+50F0k6GIY0WLZcyK6Z3JD39NqYeO7ZCC/IVXHfbCT9fAp8DvCBFntDnbp6McukWHe+EA== alc@Adrians-Mac-mini.local"
     "ecdsa-sha2-nistp521 AAAAE2VjZHNhLXNoYTItbmlzdHA1MjEAAAAIbmlzdHA1MjEAAACFBAH19WN6f0fyJUCR8vY5p0NTWOgWZkpMBYnwhUjZkAyM+F/u5LRCuMv7SawKBMOcf3+04aUleCUCadZDCn0ifzmJeQFvZaUJdlylyv4OK39JUiYH7FTCG5hcSU0zlYX8/1GYgkQQeo4x1HSGDh8Zr89FazEkRurUuvQQnz8SblSOZ5h4Bg== alc@ipp"
     "ecdsa-sha2-nistp521 AAAAE2VjZHNhLXNoYTItbmlzdHA1MjEAAAAIbmlzdHA1MjEAAACFBADqmVIyb1syOY/nG1HSGB25i0KlipWXoMs+Njg7UmyQsqUukcY7eFM/bxovoIYC5iSyRVLIZgzDqV3m5TaEE43CBQGKdEO7Kw1fa4itsl0roaR5fCu5uJT6l+wuHa6DIeQfpJbQyZqHncKQOlLNAHzidiDp5p//EgdXCxSl3MTswZQOyQ== alc@macc.local"
     "ecdsa-sha2-nistp521 AAAAE2VjZHNhLXNoYTItbmlzdHA1MjEAAAAIbmlzdHA1MjEAAACFBAARImRpyrtnxN7m8HAMhO/gkqkjIyrO/1Vt/5S0SuRGFL9rDC7YpEDYYuNx9LXVl0HMrwFl/9WtdseDWxxAqbpeLQFByDZkebzUsKW1em6PRIh/uXkBwJ56uMOF1MZU3eADbSKjMMOTTJjFtPBWsk834qe9p+zG0a7fG5o7JX28D03Yyg== alc@opensuse-leap-15.3rc.shared"
    ];
  };
 };
}
