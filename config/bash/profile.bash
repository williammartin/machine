## Everything related to user profile goes here.
eval "$(fasd --init auto)"
eval "$(direnv hook bash)"

alias vim='GOOS=linux CGO_ENABLED=0 nvim'

alias pbcopy="reattach-to-user-namespace pbcopy"
alias pbpaste="reattach-to-user-namespace pbpaste"
