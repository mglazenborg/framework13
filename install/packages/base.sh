# Install all base packages
mapfile -t packages < <(grep -v '^#' "$ELPHAEL_INSTALL/base.packages" | grep -v '^$')
pkg-add "${packages[@]}"
