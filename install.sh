#!/bin/bash
set -e

DOTFILES_DIR="`pwd`"

target_dir=$HOME

files=(".bash_profile" ".bash_aliases" ".bashrc" ".zshrc")

install_zsh_plugins() {
    local plugins_dir="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins"
    mkdir -p "$plugins_dir"  # Ensure the plugins directory exists

    # Install zsh-autosuggestions
    if [ ! -d "$plugins_dir/zsh-autosuggestions" ]; then
        git clone https://github.com/zsh-users/zsh-autosuggestions "$plugins_dir/zsh-autosuggestions"
    fi

    # Install zsh-syntax-highlighting
    if [ ! -d "$plugins_dir/zsh-syntax-highlighting" ]; then
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$plugins_dir/zsh-syntax-highlighting"
    fi
}

# Loop through the list of rc files and create symbolic links
for file_name in "${files[@]}"; do
    source_file="${DOTFILES_DIR}/${file_name}"
    symlink="${target_dir}/${file_name}"
    
    ln -sfv "$source_file" "$symlink"
done

# Call the function to install Zsh plugins
install_zsh_plugins