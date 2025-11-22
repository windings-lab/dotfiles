OS_ID=$(grep '^ID=' /etc/os-release | cut -d= -f2 | tr -d '"')

if [[ "$OS_ID" = "arch" ]]; then
    alias p-ins="pacman -S"
    alias p-ls="pacman -Q"
    alias p-lse="pacman -Qe"
fi
alias d-edit="chezmoi edit --watch"
alias ssh-agent-start='eval "$(ssh-agent -s)"'

sshadd() {
  ssh-add "$HOME/.ssh/$1"
}
compdef '_files -W ~/.ssh' sshadd
alias ssh-add="sshadd"
compdef '_files -W ~/.ssh' ssh-add

alias ssh-agent-kill="ssh-agent -k"
