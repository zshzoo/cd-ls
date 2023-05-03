# 'ls' after every 'cd'
if ! (( $chpwd_functions[(I)chpwd_cdls] )); then
  chpwd_functions+=(chpwd_cdls)
fi
function chpwd_cdls() {
  if [[ -o interactive ]]; then
    emulate -L zsh
    eval ${CD_LS_COMMAND:-ls}
  fi
}
