export XDG_CONFIG_HOME=~/.config
export XDG_CACHE_HOME=~/.var/cache
export XDG_DATA_HOME=~/.local/share
export XDG_STATE_HOME=~/.var/lib
export PAGER=more
export EDITOR=ed
export VISUAL=vi
export PATH=~/bin:$PATH
export CFLAGS='-O3 -march=native'
export MAKEFLAGS=-j`nproc`
export CARGO_BUILD_JOBS=`nproc`
export PASSWORD_STORE_DIR=~/git/password-store

# Fix GRML Zsh config cache
export GRML_COMP_CACHE_DIR=$XDG_CACHE_HOME/grml

# Fix Cargo home
export CARGO_HOME=$XDG_DATA_HOME/cargo
export PATH=$XDG_DATA_HOME/cargo/bin:$PATH

# Fix Go path and mod cache
export GOPATH=$XDG_DATA_HOME/go
export GOMODCACHE=$XDG_CACHE_HOME/go/mod

# Nix profile
export PATH=$XDG_STATE_HOME/nix/profile/bin:$PATH

# in a subshell so the variables remain set in the
# parent script
(
  unset XDG_SEAT
  unset XDG_SESSION_ID
  unset XDG_VTNR
  dbus-update-activation-environment --systemd --all
)
