# My dotfiles

This directory contains the dotfiles for my Debian system

## Requirements

Ensure you have the following installed on your system

### Git

```bash
apt install -y git
```

### Stow

```bash
apt install -y stow
```

#### Installation

First, check out the dotfiles repo in your $HOME directory using git

```bash
git clone https://github.com/JaydotMurf/dotfiles.git
cd dotfiles
```

## Handling Conflicts with GNU Stow

When deploying dotfiles using GNU `stow`, you may encounter conflicts if files already exist in the target location. This is typically because `stow` tries to create symlinks for files, but those files already exist. Below are steps you can take to resolve these conflicts.

### Error Example
You might see an error like this:

```
WARNING! stowing . would cause conflicts:
  * existing target is neither a link nor a directory: .bashrc
All operations aborted.
```

### Options to Resolve the Conflict

#### 1. Backup and Remove the Conflicting File
If you want to use the version of `.bashrc` from your dotfiles repo, you can back up the existing `.bashrc` and remove it, then run `stow` again.

- Backup your current `.bashrc`:
  ```bash
  mv ~/.bashrc ~/.bashrc.backup
  ```

- Rerun `stow`:
  ```bash
  stow .
  ```

This will create symlinks from your dotfiles repo to your home directory.

#### 2. Use `stow` Selectively for Specific Packages
Instead of stowing everything in the current directory (`stow .`), you can stow specific directories or packages within your dotfiles repo to avoid conflicts. For example, if you have a folder for `bash`, you can run:

```bash
stow bash
```

This will only symlink the contents of the `bash` folder.

#### 3. Merge Existing Configuration with Dotfiles
If you want to preserve parts of your existing `.bashrc` but also want to use parts from your dotfiles repository, you can manually merge the two files:

- Open both files (`~/.bashrc` and the `.bashrc` from your dotfiles repo) and combine them into a single `.bashrc` before using `stow`.

#### 4. Force Stow to Overwrite Files
If you are certain you want to overwrite the existing `.bashrc` without creating a backup, you can use the `--override` or `-R` option to force GNU `stow` to proceed:

```bash
stow -R .
```

However, **use this carefully** as it will overwrite existing files without warning.

### Summary of Steps:
- **Option 1**: Backup and remove conflicting files, then rerun `stow`.
- **Option 2**: Stow specific packages to avoid conflicts.
- **Option 3**: Manually merge existing configuration with the dotfiles.
- **Option 4**: Force `stow` to overwrite existing files.
