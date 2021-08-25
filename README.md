# dotfiles


## Installation

1. Clone repo into new hidden directory
```
git clone https://github.com/GabLoyer/dotfiles.git ~/.dotfiles
```

2. Run the install script
3. Install Homebrew formulae

When setting up a new Mac, you may want to install some common Homebrew formulae (and HomeBrew itself):
```
./brew.sh
```


## Pyenv

To use pyenv, you first need to install a python version: 
```
pyenv install <python-version>
```

Then, you can create a virtual environment for that python version

```
pyenv virtualenv <python-version> <env-name>
```

Once create, you can enter the virtual environment, either:
- In the current session: `pyenv activate <env-name>
- Whenever in the current folder: `pyenv local <env.name>
- Globally: `pyenv global <env-name>
