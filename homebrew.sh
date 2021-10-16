# Install XCode commandline tools
echo "Installing XCode CommandLine Tools"
xcode-select —-install

# ZSH is installed on macOS by default, 
# Install oh-my-zsh
echo "Setting-up ZSH!"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Then, install powerlevel10k ZSH theme

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Set ZSH current theme to powerlevel10k or use my .zshrc

echo ZSH_THEME="powerlevel10k/powerlevel10k" >> ~/.zshrc

# Let's now install Homebrew - package manager for macOS. (Don't worry, macOS comes pre-installed with ruby and python )
echo "Installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Default macOS terminal is great but iTerm 2 is just phenomenal!
echo "Installing iTerm2"
brew install --cask iterm2

# Cool! Now lets install the best editor in the world AKA Visual Studio Code
echo "Installing Visual Studio Code"
brew install --cask visual-studio-code

# Now we will add autocompletion to our ZSH (Inspired from FISH)

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo plugins=\(zsh-autosuggestions\) >> ~/.zshrc

# Let's also add syntax highlighting to our ZSH

brew install zsh-syntax-highlighting
echo source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh >> ~/.zshrc

# Now lets install some SDKs and Runtimes

# -> Node.js
echo "Installing Node.js"
brew install node

# -> Java
echo "Intsalling OpenJDK 11"
brew install openjdk@11

# -> Go Lang
echo "Installing GoLang"
brew install go

# Note: Clang already comes installed as xcode command line tools

# Let's now get some dev tools now, shall we?

# -> Docker
echo "Installing Docker Desktop"
brew install --cask docker

# -> MongoDB
echo "Tapping MongoDB Community Edition"
brew tap mongodb/brew
echo "Installing MongoDB Community Edition"
brew install mongodb-community

# -> Redis DB
echo "Installing RedisDB"
brew install redis

# Installing Elasticsearch and Kibana

# -> Elasticsearch
echo "Now installing elasticsearch"
brew tap elastic/tap
brew install elastic/tap/elasticsearch-full

# -> Kibana
echo "Now installing Kibana"
brew tap elastic/tap
brew install elastic/tap/kibana-full


# Let's wrap up by installing JetBrains Toolbox
echo "Installing JetBrains Toolbox"
brew install --cask jetbrains-toolbox

# Let's install some testing tools

# Install laztgit (Interactive CLI for git)
echo "Installing LazyGit"
brew install lazygit

# Installing Postman
echo "Installing postman"
brew install --cask postman

# Installing Robo 3T (GUI+Console for MongoDB)
echo "Installing Robo 3T"
brew install --cask robo-3t

# Installing some fonts
echo "Installing monospaced fonts"
brew tap homebrew/cask-fonts
echo "Now installing CascadiaCode"
brew install font-cascadia-code

# Now reload zsh
echo "Now reloading zsh..."
zsh
