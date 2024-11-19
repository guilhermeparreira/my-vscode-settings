cd ~
vim .bashrc
parse_git_info() {
    git rev-parse --is-inside-work-tree &>/dev/null || return
    repo=$(basename "$(git rev-parse --show-toplevel 2>/dev/null)")
    branch=$(git branch 2>/dev/null | grep '^*' | colrm 1 2)
    [ -n "$(git status --porcelain 2>/dev/null)" ] && changes="*" || changes=""
    echo " $repo $(tput setaf 3)$branch$(tput sgr0) $(tput setaf 1)$changes$(tput sgr0)"
}
PS1="\[\e[32m\]\u\[\e[0m\]\[\e[34m\]\w\[\e[0m\]\$(parse_git_info)\n\$ "
source .bashrc
