
if command -s pipenv > /dev/null
   eval (direnv hook fish)
end

set -gx NIX_BUILD_SHELL (which fish)
bass source ~/.nix-profile/etc/profile.d/nix.sh
