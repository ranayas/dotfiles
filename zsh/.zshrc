# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ohmyzsh Theme.
ZSH_THEME="robbyrussell"

# zsh plugins.
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

# Load oh-my-zsh.sh
source $ZSH/oh-my-zsh.sh

# User configuration.
export EDITOR="nvim"
export BROWSER="google-chrome"
export VISUAL=nvim
export PAGER=less

# Custom aliases.
source $HOME/.config/zsh/aliases

# Rust binaries.
export PATH="$HOME/.cargo/bin:$PATH"

# Composer binaries.
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

# Symfony
export PATH="$HOME/.symfony/bin:$PATH"

# Golang binaries.
export PATH="/usr/local/go/bin:$PATH"

# Add $HOME/.local/bin to $PATH.
export PATH="$HOME/.local/bin:$PATH"

# Load Node Version Manager
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Source vte.sh if current terminal is termite
if [[ $TERM == xterm-termite ]]; then
  . /etc/profile.d/vte.sh
  __vte_osc7
fi

# Custom functions
source $HOME/.config/zsh/functions

# Maven
export PATH="$HOME/.local/opt/apache-maven-3.6.3/bin:$PATH"
