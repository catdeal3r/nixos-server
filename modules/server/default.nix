{
  # Networking hostname
  networking.hostName = "server-0";

  # SSH Daemon
  services.sshd = {
    enable = true;
  };

  # Firewall 
  networking.firewall = {
    enable = true;
    allowedTCPPorts = [ 22 ];
    allowPing = true; # change after finishing setup
  };

}
