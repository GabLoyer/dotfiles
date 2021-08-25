# Check for Oh My Zsh and install if we don't have it
if test ! $(which omz); then
  printf "\n>> Install zsh"
  /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# zsh autosuggestions
rm -rf ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# xcode script tools
xcode-select --install

# ZeroTier VPN
curl -sS https://download.zerotier.com/dist/ZeroTier%20One.pkg > ~/Downloads/ZeroTierOne.pkg
sudo installer -pkg ~/Downloads/ZeroTierOne.pkg -target /
