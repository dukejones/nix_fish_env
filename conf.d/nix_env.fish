
if which -s direnv
   eval (direnv hook fish)
end


bass source ~/.nix-profile/etc/profile.d/nix.sh
