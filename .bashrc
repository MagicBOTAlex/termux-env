alias server='ssh -p 226 botserver@gitea.deprived.dev'
alias desk='ssh -p 226 botmain@gitea.deprived.dev'
alias pubkey='cat ~/.ssh/id_ed25519.pub | qrencode -t UTF8'

eval "$(starship init bash)"
