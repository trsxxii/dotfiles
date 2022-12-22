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

4. Install Xcode with specific version
```
rbenv exec xcversion update
rbenv exec xcversion list
rbenv exec xcversion install [YOUR VERSION]
```

6. Restart Mac and Finished

---

# Manual settings

* Raycast.app
	* rayconfig can set a password, but don't add it to git as it may contain sensitive information
* Setting preference and color theme for each app 
	* https://draculatheme.com/
