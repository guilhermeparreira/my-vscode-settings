# GIT

This folder holds the most important automations I do in git that worked

# hooks

The files inside `hooks` are automations that run locally. 
You need to copy the hook available in the folder `<repo_name>/.git/hooks`.
After creating it, you need to give the permission:

```sh
chmod +x <hook_name>
```

Example:

```sh
chmod +x ./hooks/post-merge
```

## Definitions

+ `hooks/post-merge` clear the branches already deleted
