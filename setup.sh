timedatectl set-timezone Asia/Tokyo
export DEBIAN_FRONTEND=noninteractive

apt update

apt install git curl -y

#neovim
apt install neovim -y

./zsh/setup_zsh.sh