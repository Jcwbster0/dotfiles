export PATH="$HOME/.local/bin:$PATH"


alias ll="ls -lah"

bindkey -v

# Load FZF configs
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Change the global default search engine for fzf
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'

# Speed up folder-only searches (like `cd **`)
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude .git . "$1"
}

# Speed up general file searches (like `nano **`)
_fzf_compgen_path() {
  fd --hidden --follow --exclude .git . "$1"
}


export EDITOR="vim"
export VISUAL="vim"

typeset -U path
