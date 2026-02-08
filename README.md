1) Clone this repo (in home folder)
```
  git clone https://github.com/cursed-hardware/nixos-dotfiles ~/.dotfiles
```

2) Symlink NixOS configuration file
```
  sudo ln -s /home/core/.dotfiles/home-manager/configuration.nix /etc/nixos/.
```

3) Install home manager
```
   sudo nix-channel --add https://github.com/nix-community/home-manager/archive/release-25.11.tar.gz home-manager
   sudo nix-channel --update
```


4) Rebuild system
```
  sudo nixos-rebuild switch
```

5) Symlink home manager config file
```
  mkdir ~/.config/home-manager
  ln -s ~/.dotfiles/home-manager/home.nix ~/.config/home-manager 
```

6) Setup home manager
```
  home-manager switch 
```
