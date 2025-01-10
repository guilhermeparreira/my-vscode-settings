# my-vscode-settings

This repository stores all my personal vscode preferences. I use it to have both shortcuts in my personal and professional laptops.

Both PCs cloned these repositories and have a symbolic link from the repo to the User Settings in Vscode.

So, to use it in another repo, you need to clone the repo and then create the symbolic link:

```bash
cd ~
# You need to remove the previous file before
rm ~/.config/Code/User/settings.json
rm ~/.config/Code/User/keybindings.json
rm ~/.config/Code/User/personal_snippets.code-snippets
cd Documents
git clone https://github.com/guilhermeparreira/my-vscode-settings.git
cd my-vscode-settings/
ln -s ~/Documents/my-vscode-settings/keybindings.json ~/.config/Code/User/keybindings.json
ln -s ~/Documents/my-vscode-settings/settings.json ~/.config/Code/User/settings.json
ln -s ~/Documents/my-vscode-settings/personal_snippets.code-snippets ~/.config/Code/User/personal_snippets.code-snippets
```

This will, if a change occurs in the file, you need to push to the repository and pull the update in another PC.
