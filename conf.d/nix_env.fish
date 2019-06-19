
if which -s direnv
   eval (direnv hook fish)
end

# nix
set -l misc_dir (realpath (dirname (status --current-filename))/../misc)
eval (sh $misc_dir/nix_fish_env.sh) 2>/dev/null
