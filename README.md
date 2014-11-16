# dotfiles

## Install (myself)

    cd
    git clone --recurse-submodules git@github.com:steakknife/dotfiles.git .

## Install (others)

    cd
    git clone https://github.com/steakknife/dotfiles .
    ln -sf .gitmodules.public .gitmodules
    git submodule update --init --recursive
