if [[ -d ~/.dotfiles ]]; then
  cd ~
  git clone https://github.com/mglazenborg/dotfiles.git .dotfiles
  cd .dotfiles
  for dir in */; do
    stow "$dir"
  done
  cd ~
fi
