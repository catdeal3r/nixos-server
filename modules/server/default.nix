{
  # Networking hostname
  networking.hostName = "server-0";

  # SSH Daemon
  services.openssh = {
    enable = true;
    allowSFTP = true;
    settings = {
      PermitRootLogin = "no";
      X11Forwarding = false;
      PasswordAuthentication = true;
    };
  };

  # Firewall 
  networking.firewall = {
    enable = true;
    allowedTCPPorts = [ 22 ];
    allowPing = true; # change after finishing setup
    extraCommands = ''
      # allow my laptop to connect via ssh
      iptables -A nixos-fw -p tcp --dport 22 -s 192.168.188.185 -j ACCEPT
      # disallow everything else
      iptables -A nixos-fw -p tcp --dport 22 -j DROP
    '';
  };

}
