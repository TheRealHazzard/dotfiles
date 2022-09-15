# Install XCode commandline tools
echo "(Step - 1/9) Installing XCode CommandLine Tools..."
xcode-select —-install

# ZSH is installed on macOS by default, 
# Install oh-my-zsh
echo "(Step - 2/9) Setting-up ZSH!"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Let's now install Homebrew - package manager for macOS. (Don't worry, macOS comes pre-installed with ruby and python )
echo "(Step - 3/9) Installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Now we will add autocompletion to our ZSH (Inspired from FISH)
echo "(Step - 4/9) Cloning zsh-autosuggestions..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install all formulas from Brewfile
echo "(Step - 5/9) Install all formulas from Brewfile..."
brew bundle install --file ./Brewfile

# Override current ~/.zshrc with our custom ~/.zshrc
echo "(Step - 6/9) Override current ~/.zshrc with our custom ~/.zshrc..."
cat ./zshrc > ~/.zshrc

# Overriding .gitconfig
echo "(Step - 7/9) Overriding .gitconfig..."
cat .gitconfig > ~/.gitconfig

# Overriding .vimrc
echo "(Step - 8/9) Overriding .vimrc..."
cat .vimrc > ~/.vimrc

# Now reload zsh
echo "(Step - 9/9) Now reloading zsh..."
zsh
