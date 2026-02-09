1) Clone this repo (in home folder)
```
git clone https://github.com/cursed-hardware/nixos-dotfiles ~/.dotfiles
```

2) Symlink NixOS configuration file

Delete (or backup) old config file
```
rm -rf /etc/nixos/configuration.nix
```

Symlink new NixOS config
```
sudo ln -s /home/core/.dotfiles/nixos/configuration.nix /etc/nixos/.
```

3) Rebuild system
```
sudo nixos-rebuild switch
```

4) Install home manager
```
sudo nix-channel --add https://github.com/nix-community/home-manager/archive/release-25.11.tar.gz home-manager
```
```
sudo nix-channel --update
```
```
nix-shell '<home-manager>' -A install
```


5) Symlink home manager config file

Remove old home manager config if exist
```
rm -rf ~/.config/home-manager/home.nix
```
```
ln -s ~/.dotfiles/home-manager/home.nix ~/.config/home-manager 
```

6) Switch to home manager config
```
home-manager switch
```
