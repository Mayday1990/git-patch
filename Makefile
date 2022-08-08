SHELL:=/bin/bash

install: install_git_patch install_git_patch_bash_completion echo_reload_environment
install_git_patch:
	@if [ ! -d ~/.local/bin ]; then mkdir -p ~/.local/bin; fi
	@cp .local/bin/git-patch ~/.local/bin/git-patch
	@if ! [[ ":${PATH}:" == *":${HOME}/.local/bin:"* ]]; then echo "Your path is missing ~/.local/bin, you might want to add it."; fi
install_git_patch_bash_completion:
	@if [ ! -d ~/bash_completion.d/ ]; then mkdir ~/bash_completion.d/; fi
	@cp ./bash_completion.d/git-patch ~/bash_completion.d/git-patch
	@if [ -f ~/.bash_completion ]; then echo "~/.bash_completion already exists. You might want to source ~/bash_completion.d/git-patch"; else cp ./.bash_completion ~/.bash_completion; fi
echo_reload_environment:
	@echo "Please restart your terminal or source ~/.profile again"
uninstall:
	@rm -f ~/.local/bin/git-patch
	@rm -f ~/bash_completion.d/git-patch