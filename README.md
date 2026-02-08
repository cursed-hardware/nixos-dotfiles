1) NixOS configuration file
```
sudo ln -s /home/core/.dotfiles/configuration.nix /etc/nixos/.
```

2) Install home manager
```
   sudo nix-channel --add https://github.com/nix-community/home-manager/archive/release-25.11.tar.gz home-manager
   sudo nix-channel --update
```

3) Setup home manager
```
  home-manager switch 
```
