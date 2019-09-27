# 'ls' after 'cd'
function chpwd() {
    emulate -L zsh
    ls -FG
}
