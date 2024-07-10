#!/usr/bin/env zsh
# -- VARIABLES -- #
C_BLACK='\033[1;30m'
C_RED='\033[1;31m'
C_GREEN='\033[1;32m'
C_YELLOW='\033[1;33m'
C_BLUE='\033[1;34m'
C_PURPLE='\033[1;35m'
C_CYAN='\033[1;36m'
C_WHITE='\033[1;37m'
C_GRAY='\033[1;34m'
C_RESET='\033[0m'
I_OK="${C_BLACK}[${C_GREEN} OK ${C_BLACK}] ${C_RESET}" # completed successfully
I_ERR="${C_BLACK}[${C_RED} ERR ${C_BLACK}] ${C_RESET}" # error
I_SKIP="${C_BLACK}[${C_CYAN} SKIP ${C_BLACK}] ${C_RESET}" # skipped
I_RUN="${C_BLACK}[${C_CYAN} RUN ${C_BLACK}] ${C_RESET}" # running
I_DO="${C_BLACK}[${C_YELLOW} DO ${C_BLACK}] ${C_RESET}" # user action required
I_ASK="${C_BLACK}[${C_BLUE}  ?  ${C_BLACK}] ${C_RESET}" # user prompt (ask)
I_INFO="${C_BLACK}[${C_PURPLE}  i  ${C_BLACK}] ${C_RESET}" # information
G_BORDER="${C_BLACK}󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜󰇜${C_RESET} "


# -- SOURCE SHELL CONFIG FILES -- #
function src_zsh_conf(){
  source "${ZSH_DIR:-$HOME/.config/zsh}/variables.zsh" # variables
  source "${ZSH_DIR:-$HOME/.config/zsh}/env_vars.zsh" # environment
  source "${ZSH_DIR:-$HOME/.config/zsh}/functions.zsh" # functions
  source "${ZSH_DIR:-$HOME/.config/zsh}/aliases.zsh" # aliases
  source "${ZSH_DIR:-$HOME/.config/zsh}/options.zsh" # options
  source "${ZSH_DIR:-$HOME/.config/zsh}/tools.zsh" # modules
  source "${ZSH_DIR:-$HOME/.config/zsh}/path.zsh" # path
}

# -- BEFORE -- #
function execute_before() {
  source "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
}

# -- AFTER -- #
function execute_after() {
}

execute_before && src_zsh_conf && execute_after

