# my-personal-settings

This repository stores all my personal preferences. I use it to have both shortcuts in my personal and professional laptops.

## vs-code

Both PCs cloned these repositories and have a symbolic link from the repo to the User Settings in `Vscode`.

So, to use it in another repo, you need to clone the repo and then create the symbolic link:

```bash
cd ~
# You need to remove the previous file before
rm ~/.config/Code/User/settings.json
rm ~/.config/Code/User/keybindings.json
rm ~/.config/Code/User/snippets/personal_snippets.code-snippets
rm ~/.config/starship.toml
cd Documents
git clone https://github.com/guilhermeparreira/my-vscode-settings.git
cd my-vscode-settings/
ln -s ~/Documents/my-vscode-settings/keybindings.json ~/.config/Code/User/keybindings.json
ln -s ~/Documents/my-vscode-settings/settings.json ~/.config/Code/User/settings.json
ln -s ~/Documents/my-vscode-settings/personal_snippets.code-snippets ~/.config/Code/User/snippets/personal_snippets.code-snippets
ln -s ~/Documents/my-vscode-settings/starship.toml ~/.config/starship.toml
```

This will, if a change occurs in the file, you need to push to the repository and pull the update in another PC.

Don't forget to install [zoxide](https://github.com/ajeetdsouza/zoxide?tab=readme-ov-file).
Then [fzf](https://github.com/junegunn/fzf) through homebrew.
Then [nerdfont](https://www.nerdfonts.com/font-downloads) and [starship](https://starship.rs/).
Then [eza](https://github.com/eza-community/eza). Apply setup:

```sh
alias ls='eza --color=always --icons=always --group-directories-first'
alias ll='eza -l --color=always --icons=always --group-directories-first'
alias la='eza -la --color=always --icons=always --group-directories-first'
```

to `~/.bashrc`. Or a very [advanced setup](https://gist.github.com/AppleBoiy/04a249b6f64fd0fe1744aff759a0563b).

## Positron

Same idea as vs-code, but a different editor:

```bash
cd ~
# Remove old config files if they exist
rm ~/.config/Positron/User/settings.json
rm ~/.config/Positron/User/keybindings.json
rm ~/.config/Positron/User/snippets/personal_snippets.code-snippets

# Clone your repo if not already cloned
cd ~/Documents
git clone https://github.com/guilhermeparreira/my-vscode-settings.git
cd my-vscode-settings/

# Create symlinks for Positron
ln -s ~/Documents/my-vscode-settings/keybindings.json ~/.config/Positron/User/keybindings.json
ln -s ~/Documents/my-vscode-settings/settings.json ~/.config/Positron/User/settings.json
ln -s ~/Documents/my-vscode-settings/personal_snippets.code-snippets ~/.config/Positron/User/snippets/personal_snippets.code-snippets
```

## Bash

Include the content of `bashrc_personalized.sh` into `bash.sh` in the correct spot.
test
