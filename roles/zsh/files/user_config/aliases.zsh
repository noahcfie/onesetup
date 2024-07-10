#!/usr/bin/env zsh
# -- BUILTIN -- #
alias cl="clear"
alias mf="touch"
alias md="mkdir"
alias gr="grep"
alias sr="source"
alias ns="netstat"
alias xa="xargs"
# -- MODULES -- #
alias nv="nvim"
alias br="brew"
alias py="python"
alias ku="kubectl"
alias lg="lazygit"
alias pn="pnpm"
alias ff="fastfetch"
alias ct="bat --color=always"
alias xc="pbcopy"
alias xp="pbpaste"
alias pg="nvimpager"
alias an="ansible"
alias an-pl="ansible-playbook"
alias tf="terraform"
alias pw="pwsh"
alias ls="eza --color=always --long --no-filesize --icons=always --no-time --no-user --no-permissions"
alias fz='nvim $(fzf -m --preview="bat --color=always {}")'

# -- DROP IN REPLACEMENTS -- #
alias python3="python"
alias pip3="pip"
alias ssh="ssh -A"
