#!/usr/bin/env zsh

# border
echo -e "${G_BORDER}"

# -- CHECK SERVICES -- #
# SKHD 
if pgrep -f skhd >/dev/null; then
    echo -e "${I_OK}skhd service"
else
    echo -e "${I_ERR}skhd service"
fi
# YABAI 
if pgrep -f yabai >/dev/null; then
    echo -e "${I_OK}yabai service"
else
    echo -e "${I_ERR}yabai service"
fi

# BORDERS 
if pgrep -f borders >/dev/null; then
    echo -e "${I_OK}borders service"
else
    echo -e "${I_ERR}borders service"
fi

# SSH-AGENT 
if pgrep -u "$USER" ssh-agent > /dev/null; then
  echo -e "${I_OK}ssh-agent"
else
  eval "$(ssh-agent -s)"
  echo -e "${I_RUN}ssh-agent"
fi

# border
echo -e "$G_BORDER"

# -- CHECK ENVIRONMENT VARIABLES -- #
if [[ -z "${HOME}" ]]; then # HOME
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: HOME"
fi
# xdg variables
if [[ -z "${XDG_CONFIG_HOME}" ]]; then # XDG_CONFIG_HOME
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: XDG_CONFIG_HOME"
fi
if [[ -z "${XDG_DATA_HOME}" ]]; then # XDG_DATA_HOME
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: XDG_DATA_HOME"
fi
if [[ -z "${XDG_STATE_HOME}" ]]; then
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: XDG_STATE_HOME"
fi
if [[ -z "${XDG_CACHE_HOME}" ]]; then # XDG_CACHE_HOME
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: XDG_CACHE_HOME"
fi
# custom directory variables
if [[ -z "${ZDOTDIR}" ]]; then # ZDOTDIR
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: ZDOTDIR"
fi
# setting environment variables
if [[ -z "${GPG_TTY}" ]]; then # GPG_TTY
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: GPG_TTY"
fi
if [[ -z "${GNUPGHOME}" ]]; then # GNUPGHOME
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: GNUPGHOME"
fi
if [[ -z "${PNPM_HOME}" ]]; then # PNPM_HOME
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: PNPM_HOME"
fi
if [[ -z "${STARSHIP_CONFIG}" ]]; then # STARSHIP_CONFIG
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: STARSHIP_CONFIG"
fi
if [[ -z "${EDITOR}" ]]; then # EDITOR
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: EDITOR"
fi
if [[ -z "${BROWSER}" ]]; then # BROWSER
  echo -e "${I_ERR}SET ENVIRONMENT VARIABLE: BROWSER"
fi
# check zsh config dir
if [[ ! -d "$ZDOTDIR" ]]; then
  echo -e "${I_ERR}ZDOTDIR directory not found: $ZDOTDIR"
fi

if [[ "$SHELL" =~ "zsh" ]]; then
  echo -e "${I_OK}SHELL  ZSH"
elif [[ "$SHELL" =~ "bash" ]]; then
  echo -e "${I_OK}SHELL  BASH"
else
  echo -e "${I_OK}SHELL  UNKNOWN"
  echo -e "${I_INFO}please use bash or zsh"
fi
