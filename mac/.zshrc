# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export ZSH_THEME=""

plugins=(
	git
	mvn
	jenv
	you-should-use
	zsh-autosuggestions
        zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source $(brew --prefix nvm)/nvm.sh

eval "$(starship init zsh)"

export STARSHIP_CONFIG=~/.config/starship/starship.toml
# Created by `pipx` on 2025-01-18 16:21:43
export PATH="$PATH:/Users/joao/.local/bin"
