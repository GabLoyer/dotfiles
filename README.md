# dotfiles


## Installation

1. Install Apple's Command Line Toolswhich are prerequisites for Git and Homebrew.
``` 
xcode-select --install
```

2. Clone repo into new hidden directory
```
git clone https://github.com/GabLoyer/dotfiles.git ~/.dotfiles
```

3. Run the bootstrap script
To update, cd into your local dotfiles repository and then:
```
source bootstrap.sh
```

4. Install Homebrew formulae

When setting up a new Mac, you may want to install some common Homebrew formulae (after installing Homebrew, of course):
```
./brew.sh
```