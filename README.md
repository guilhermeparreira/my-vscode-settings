# my-vscode-settings

This repository stores all my personal vscode preferences. I use it to have both shortcuts in my personal and professional laptops.

Both PCs cloned these repositories and have a symbolic link from the repo to the User Settings in Vscode.

So, to use it in another repo, you need to clone the repo and then create the symbolic link:

```bash
cd ~
# You need to remove the previous file before
rm ~/.config/Code/User/settings.json
rm ~/.config/Code/User/keybindings.json
cd Documents
git clone https://github.com/guilhermeparreira/my-vscode-settings.git
cd my-vscode-settings/
ln -s ~/Documents/my-vscode-settings/keybindings.json ~/.config/Code/User/keybindings.json
ln -s ~/Documents/my-vscode-settings/settings.json ~/.config/Code/User/settings.json
```

This will, if a change occurs in the file, you need to push to the repository and pull the update in another PC.
