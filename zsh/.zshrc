export PATH="$HOME/.local/bin:$PATH"


alias ll="ls -lah"
# opencode
export PATH=/Users/justinwebster/.opencode/bin:$PATH

bindkey -v

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source <(fzf --zsh)

# 1. Change the global default search engine for fzf
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'

# 2. Speed up folder-only searches (like `cd **`)
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude .git . "$1"
}

# 3. Speed up general file searches (like `nano **`)
_fzf_compgen_path() {
  fd --hidden --follow --exclude .git . "$1"
}


export EDITOR="vim"
export VISUAL="vim"

