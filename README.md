# dotfiles

1. Change shell and Install CommandLineTools
```
chsh -s /bin/zsh
xcode-select --install
```

2. Open Terminal.app && Install without git
```
cd ~/ && bash -c "$( curl -fsSL https://raw.githubusercontent.com/trsxxii/dotfiles/HEAD/bin/install.sh )"
```

3. Setup .secret.zshrc
```
vi config/.secret.zshrc
```

4. Close Terminal.app && Open Warp.app

5. Install Xcode with specific version
```
xcversion update
xcversion list
xcversion install [YOUR VERSION]
```

---

# Manual settings

* Raycast.app
	* rayconfig can set a password, but don't add it to git as it may contain sensitive information
* Setting preference and color theme for each app 
	* https://draculatheme.com/
