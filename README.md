# dotfiles

1. Change shell and Install CommandLineTools and Restart Terminal.app
```
chsh -s /bin/zsh
xcode-select --install
```

2. download dotfiles
```
git clone https://github.com/trsxxii/dotfiles.git
```

3. Restart Terminal.app && Install dotfiles
```
cd ~/dotfiles && make all
```

4. Create .secret.zshrc and change it
```
(example)
export GITHUB_ACCESS_TOKEN=ghp_XXX

alias proj='cd path/to/proj'

git config --global user.name ""
git config --global user.email ""
git config --global credential.helper osxkeychain
```

5. Restart Mac and Finished

---

# Manual settings

* Raycast.app
	* rayconfig can set a password, but don't add it to git as it may contain sensitive information
* Setting preference and color theme for each app 
	* https://draculatheme.com/
