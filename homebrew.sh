# Install XCode commandline tools

xcode-select —-install

# ZSH is installed on macOS by default, 
# Install oh-my-zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Then, install powerlevel10k ZSH theme

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Set ZSH current theme to powerlevel10k or use my .zshrc

echo ZSH_THEME="powerlevel10k/powerlevel10k" > ~/.zshrc.

# Now reload zsh

zsh

# Let's now install Homebrew - package manager for macOS. (Don't worry, macOS comes pre-installed with ruby and python )

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Default macOS terminal is great but iTerm 2 is just phenomenal!

brew install --cask iterm2

# Cool! Now lets install the best editor in the world AKA Visual Studio Code

brew install --cask visual-studio-code

# Now we will add autocompletion to our ZSH (Inspired from FISH)

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo plugins=(zsh-autosuggestions) > ~/.zshrc

# Let's also add syntax highlighting to our ZSH

brew install zsh-syntax-highlighting
echo source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh > ~/.zshrc

# Now lets install some SDKs and Runtimes

# -> Node.js
brew install node

# -> Java
brew install openjdk@11

# -> Go Lang
brew install go

# Note: Clang already comes installed as xcode command line tools

# Let's now get some dev tools now, shall we?

# -> Docker
brew install --cask docker

# -> MongoDB
brew tap mongodb/brew
brew install mongodb-community

# -> Redis DB
brew install redis

# Let's wrap up by installing JetBrains Toolbox
brew install --cask jetbrains-toolbox












