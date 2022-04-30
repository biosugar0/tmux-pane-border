/usr/local/Homebrew/bin/brew:
	@/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

/usr/local/bin/kubectl: /usr/local/Homebrew/bin/brew
	brew install kubectl

.PHONY: install
install: /usr/local/bin/kubectl
	@echo [tmux-pane-border] install
	@ln -s $(PWD)/tmux-pane-border /usr/local/bin/tmux-pane-border
	@echo [tmux-pane-border] install completed.
