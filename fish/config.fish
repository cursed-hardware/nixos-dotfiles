if status is-interactive
    set -g fish_greeting
    set -gx EDITOR hx
    alias nixcfg "sudo $EDITOR /etc/nixos/configuration.nix"
    alias nixreb "sudo nixos-rebuild switch"
    # Commands to run in interactive sessions can go here
end
