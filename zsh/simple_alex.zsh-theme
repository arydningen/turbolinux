# Modified simple theme, the only change is the yellow gold color.

# Colors for prompt
idcolor="%B%F{#8700ff}"
idcolor="%B%F{#875fd7}"
dircolor="%B%F{#ffd700}"
promptcolor="%B%F{#d70000}"

# PROMPT='%(!.%{$fg[red]%}.%{$fg[green]%})%~$(git_prompt_info)%{$reset_color%} '
PROMPT='${idcolor}%n@%m %(!.%{$fg[red]%}.%{$dircolor%})%~$(git_prompt_info)%{$reset_color%} '

# If Im in tmux
if { [ "$TMUX" ]; } then
  # PS1="${idcolor}==> ${dircolor}%~${promptcolor}%#$reset_color "
  PROMPT='%(!.%{$fg[red]%}.%{$dircolor%})%~$(git_prompt_info)%{$reset_color%} '
fi

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[blue]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[blue]%})"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔"
