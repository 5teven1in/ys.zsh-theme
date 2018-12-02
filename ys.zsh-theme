# Clean, simple, compatible and meaningful.
# Tested on Linux, Unix and Windows under ANSI colors.
# It is recommended to use with a dark background.
# Colors: black, red, green, yellow, *blue, magenta, cyan, and white.
#
# Mar 2013 Yad Smood

# VCS
YS_VCS_PROMPT_PREFIX1=" %{$fg[white]%}on%{$reset_color%} "
YS_VCS_PROMPT_PREFIX2="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
YS_VCS_PROMPT_SUFFIX="%{$reset_color%}"
YS_VCS_PROMPT_DIRTY="%{$fg_bold[blue]%}) %{$fg[yellow]%}✗"
YS_VCS_PROMPT_CLEAN="%{$fg_bold[blue]%}) %{$fg[green]%}✔"

# Git info
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="${YS_VCS_PROMPT_PREFIX1}${YS_VCS_PROMPT_PREFIX2}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$YS_VCS_PROMPT_SUFFIX"
ZSH_THEME_GIT_PROMPT_DIRTY="$YS_VCS_PROMPT_DIRTY"
ZSH_THEME_GIT_PROMPT_CLEAN="$YS_VCS_PROMPT_CLEAN"

local ret_status="%(?,%{$terminfo[bold]$fg[green]%}➜ ,%{$terminfo[bold]$fg[red]%}➜ "

# Prompt format:
#
# TIME PRIVILEGES USER @ MACHINE in DIRECTORY on git:(BRANCH) STATE
# ➜ COMMAND
#
# For example:
#
# 21:47:42 % ys @ ys-mbp in ~/.oh-my-zsh on git:(master) ✔
# ➜

PROMPT="
%{$fg[cyan]%}%* \
%(#,%{$bg[red]%}%{$fg[black]%}%n%{$reset_color%},%{$fg[yellow]%}%n) \
%{$fg[white]%}@ \
%{$fg[white]%}%m \
%{$fg[white]%}in \
%{$terminfo[bold]$fg[green]%}%~%{$reset_color%}\
${git_info}
${ret_status}%{$reset_color%}"
