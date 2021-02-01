# Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#Install packages from repository 
brew bundle --file ~/.dotfiles/Brewfile
