
if test -z (nix-env -q | grep fish-nix-shell)
    while true
        read -l -P 'Install fish-nix-shell? [Y/n] ' confirm

        switch $confirm
            case '' Y y
                set_color green; echo "Installing fish-nix-shell"; set_color normal
                nix-env -if https://github.com/haslersn/fish-nix-shell/archive/master.tar.gz
                break
            case N n
                break
        end
    end
end

if command -s fish-nix-shell > /dev/null
    fish-nix-shell --info-right | source
end

if command -s direnv > /dev/null
   eval (direnv hook fish)
end

bass source ~/.nix-profile/etc/profile.d/nix.sh

# Consider any-nix-shell as alternative. 
# https://github.com/haslersn/any-nix-shell
# nix-env -i any-nix-shell -f https://github.com/NixOS/nixpkgs/archive/master.tar.gz
# any-nix-shell fish --info-right | source
