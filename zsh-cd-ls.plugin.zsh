# 'ls' after 'cd'
function chpwd() {
    if [[ -o login ]]; then
        emulate -L zsh
        \ls -FG
    fi
}
