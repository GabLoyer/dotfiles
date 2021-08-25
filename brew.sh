
# Check for brew and install it if missing
if test ! $(which brew)
then
  if [ "$isMac" = true ] ; then
    printf "\n>> Installing Homebrew...\n"
    yes | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  else
    printf "\n>> Installing Linuxbrew...\n"
    sudo apt-get install build-essential curl file git python-setuptools
    yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
  fi
fi

# Make sure we’re using the latest Homebrew.
printf "\n>> Update Brew\n"
brew update

# Upgrade any already-installed formulae.
printf "\n>> Upgrade Brew\n"
brew upgrade

# Install packages from repository 
brew bundle --file ~/.dotfiles/Brewfile

# Remove outdated versions from the cellar.
printf "\n>> Cleanup brew\n"
brew cleanup

printf "\n>> Check Brew health\n"
brew doctor
