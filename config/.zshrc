export LANG=ja_JP.UTF-8

setopt auto_pushd
setopt pushd_ignore_dups
setopt no_flow_control
setopt extended_glob
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt no_beep
setopt auto_param_keys
setopt print_eight_bit
setopt print_exit_value
setopt mark_dirs
setopt correct
setopt correct_all
setopt no_clobber
setopt noautoremoveslash
setopt list_packed
setopt magic_equal_subst
setopt histignorealldups
setopt share_history
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt hist_verify
setopt inc_append_history

alias h='fc -lt '%F %T' 1'
alias ll='ls -l --color=auto'
alias so='source'
alias cp='cp -i'
alias rm='rm -i'
alias mkdir='mkdir -p'
alias g='gitui'

SECRET_FILE=~/secret.zshrc
if [[ -f $SECRET_FILE ]]; then
  source $SECRET_FILE
fi
