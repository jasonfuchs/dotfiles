export XDG_CONFIG_HOME=~/.config
export XDG_CACHE_HOME=~/.var/cache
export XDG_DATA_HOME=~/.local/share
export XDG_STATE_HOME=~/.var/lib
export PAGER=more
export EDITOR=ed
export VISUAL=vi

# Fix GRML Zsh config cache
export GRML_COMP_CACHE_DIR=$XDG_CACHE_HOME/grml

# Fix Cargo home
export CARGO_HOME=$XDG_DATA_HOME/cargo

# Fix Go path and mod cache
export GOPATH=$XDG_DATA_HOME/go
export GOMODCACHE=$XDG_CACHE_HOME/go/mod
