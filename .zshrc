alias dotfiles='git --git-dir=$HOME/git/dotfiles.git --work-tree=$HOME'

alias hx='helix'
alias vs='vis'

_urlencode() {
	local length="${#1}"
	for (( i = 0; i < length; i++ )); do
		local c="${1:$i:1}"
		case $c in
			%) printf '%%%02X' "'$c" ;;
			*) printf "%s" "$c" ;;
		esac
	done
}

osc7_cwd() {
	printf '\033]7;file://%s%s\e\\' "$HOSTNAME" "$(_urlencode "$PWD")"
}

autoload -Uz add-zsh-hook
add-zsh-hook -Uz chpwd osc7_cwd
