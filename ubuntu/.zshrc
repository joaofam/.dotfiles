# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

colorscript random

export ZSH="$HOME/.oh-my-zsh"

# THEMES
# ZSH_THEME="powerlevel10k"
#ZSH_THEME=""

plugins=(git
        zsh-autosuggestions
        zsh-syntax-highlighting
        web-search
        npm
        ruby
        bundler
        pip # completion for pip
        sudo # preifx current or previous sommands with sudo by pressing esc twice
        zsh_reload # type src to relaod zsh session
        ubuntu # completion for ubuntu
        command-not-found # gives suggested packaged for zsh
        colored-man-paged
        history-substring-search
)
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Set list of themes to pick fr:qom when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
#source $ZSH/oh-my-zsh.sh


alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls='exa -al --icons --color=always --group-directories-first' # my preferred listing
alias la='exa -a --icons --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --icons --color=always --group-directories-first'  # long format
alias lt='exa -aT --icons --color=always --group-directories-first' # tree listing
alias l.='exa -a --icons | egrep "^\."'
alias cls="colorls -lA --sd"
alias cat="batcat --theme=TwoDark"
# alias webcam = "guvcview -d /dev/video2 -z"
alias sudo="sudo "
alias apt="nala"
alias launch="/home/joao/.config/rofi/launchers/type-6/launcher.sh"
alias_str=".."
cmd_str="cd .."

# ANTLR
export CLASSPATH=".:/usr/local/lib/antlr-4.11.1-complete.jar:$CLASSPATH"
alias antlr4='java -Xmx500M -cp “/usr/local/lib/antlr-4.11.1-complete.jar:$CLASSPATH” org.antlr.v4.Tool'
alias grun='java -Xmx500M -cp “/usr/local/lib/antlr-4.11.1-complete.jar:$CLASSPATH” org.antlr.v4.gui.TestRig'

for i in $(seq 1 100);
do
    alias ${alias_str}="$cmd_str"
    alias_str="$alias_str."
    cmd_str="$cmd_str/.."
done

CASE_SENSITIVE="false"
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

LAST_REPO=""

cd() {
	builtin cd "$@"
	git rev-parse 2>/dev/null

	if [ $? -eq 0 ]; then
		if [ "$LAST_REPO" != $(basename $(git rev-parse --show-toplevel)) ]; then
			onefetch
			LAST_REPO=$(basename $(git rev-parse --show-toplevel))
		fi
	fi
}


#source ~/powerlevel10k/powerlevel10k.zsh-theme

#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /home/joao/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(starship init zsh)"


export PATH=$PATH:/home/joao/.spicetify

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
