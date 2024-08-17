# my-vscode-settings

This repository stores all my personal vscode preferences. I use it to have both shortcuts in my personal and professional laptops.

For that both PC cloned this repositories and have symbolic link from the repo to the User Settings in Vscode.

So, in order to use it in another repo, you need to clone the repo and then create the symbolic link:

```bash
cd ~
rm ~/.config/Code/User/settings.json # You need to remove the previous file before
rm ~/.config/Code/User/keybidings.json
cd Documents
git clone https://github.com/guilhermeparreira/my-vscode-settings.git
cd my-vscode-settings/
ln -s keybindings.json ~/.config/Code/User/keybindings.json
ln -s settings.json ~/.config/Code/User/settings.json
```

This will, if a change occurs in the file, you need to push to the repository and pull the update in the another PC.
