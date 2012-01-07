
# autocompletion (with lazy-loading builtin 'autoload')
autoload -U compinit
compinit

# initialize advanced prompt support
autoload -U promptinit
promptinit

# get available 'prompts' with "prompt -p"
# ex: 'prompt bart' loads bart config
# instead, here a custom PS1 is used

# ==== REMINDER OF PS1 FORMAT ====
# %T	Heure système (HH:MM)
# %*	Heure système (HH:MM:SS)
# %D	Date système (YY-MM-DD)
# %n	Nom d'utilisateur
# %B - %b	Balises de début - fin de l'affichage en gras
# %U - %u	Balises de début - fin de l'affichage souligné
# %d	Répertoire de travail courant
# %~	Répertoire de travail courant, relatif à ~
# %M	Nom d'hôte de l'ordinateur
# %m	Nom d'hôte de l'ordinateur (jusqu'au premier . uniquement)
# %l	Terminal courant

autoload -U colors && colors
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m%{$reset_color%} %{$fg[white]%}%T%{$reset_color%} %{$fg[yellow]%}%~%{$reset_color%} %% "

# history settings
export HISTSIZE=2000
export HISTFILE="$HOME/.history"

export SAVEHIST=$HISTSIZE

alias ls='ls -lG'
