#zsh
apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#zsh-completions
git clone https://github.com/zsh-users/zsh-completions \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions

#zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting



# Get the directory where the script is located
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Define the source and destination paths
DEST_ZSHRC="$HOME/.zshrc"
SOURCE_ZSHRC="$SCRIPT_DIR/.zshrc"  # Use the absolute path for the source file

# Copy the file
cp -f "$SOURCE_ZSHRC" "$DEST_ZSHRC"