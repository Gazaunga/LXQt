#Go Home
cd ~

# Super nano
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh

# SpaceVim
curl -sLf https://spacevim.org/install.sh | bash

# Spacemacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# Slim Zsh
curl -L https://git.io/slim > ~/.zshrc


# Must go last!
# Chruby setup
sudo touch /etc/profile.d/chruby.sh
cd /etc/profile.d
sudo cat > chruby.sh <<- "EOF"
#!/bin/sh

if [ -n "$BASH_VERSION" ] || [ -n "$ZSH_VERSION" ]; then
    source /usr/share/chruby/chruby.sh
    source /usr/share/chruby/auto.sh
fi
EOF
