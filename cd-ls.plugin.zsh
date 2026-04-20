# Style settings for cd-ls behavior
zstyle ':cd-ls:*' init_complete false
zstyle ':cd-ls:*' CD_LS_COMMAND 'ls'
zstyle ':cd-ls:*' GIT_COMMAND 'git status'
zstyle ':cd-ls:*' ls_enabled true
zstyle ':cd-ls:*' git_enabled true

function auto-ls-git-status() {
  if ! zstyle -T ':cd-ls:*' init_complete || ! zstyle -t ':cd-ls:*' git_enabled; then
    return
  fi
  if [[ -o interactive ]] && [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == true ]]; then
    eval ${GIT_COMMAND:-'git status'}
  fi
}

function chpwd_cdls() {
  if ! zstyle -T ':cd-ls:*' init_complete || ! zstyle -t ':cd-ls:*' ls_enabled; then
    return
  fi
  if [[ -o interactive ]]; then
    eval ${CD_LS_COMMAND:-ls}
  fi
}

# Add functions to chpwd hook
if ! (( $chpwd_functions[(I)chpwd_cdls] )); then
  chpwd_functions+=(chpwd_cdls)
fi

if ! (( $chpwd_functions[(I)auto-ls-git-status] )); then
  chpwd_functions+=(auto-ls-git-status)
fi

# Set init_complete to true after setup
zstyle ':cd-ls:*' init_complete true
