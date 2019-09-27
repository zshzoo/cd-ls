# 'ls' after 'cd'
function chpwd() {
    if [[ -o interactive ]]; then
        emulate -L zsh
        \ls -FG
    fi
}
