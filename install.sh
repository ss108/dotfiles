#!/bin/bash
set -e

DOTFILES_DIR="`pwd`"

target_dir=$HOME

files=(".bash_profile", ".bash_aliases", ".bashrc", ".zshrc")

# Loop through the list of rc files and create symbolic links
for file_name in "${files[@]}"; do
    source_file="${DOTFILES_DIR}/${file_name}"
    symlink="${target_dir}/${file_name}"
    
    ln -sfv "$source_file" "$symlink"
done



