{ pkgs, ... }:

{
  users.users.user = {
    isNormalUser = true;
    description = "user";
    initialPassword = "12345";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
  };
  
  programs.fish.enable = true;
}
