
# xcode script tools
xcode-select --install

# Check for Oh My Zsh and install if we don't have it
if test ! $(which omz); then
  printf "\n>> Install zsh"
  /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# zsh autosuggestions
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting

# Kdiff3 Configuration
git config --add merge.tool kdiff3
git config --add mergetool.kdiff3.path /Applications/kdiff3.app/Contents/MacOS/kdiff3 
git config --add mergetool.kdiff3.trustExitCode false
git config --add diff.guitool kdiff3
git config --add difftool.kdiff3.path /Applications/kdiff3.app/Contents/MacOS/kdiff3 
git config --add difftool.kdiff3.trustExitCode false