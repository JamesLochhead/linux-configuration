#!/usr/bin/env bash

set -Eeuxo pipefail

main() {
	blog
	git_setup
}

blog() {
	notes_dir="$HOME/Notes"
	scratchpads_dir="$HOME/Scratchpads"
	blog_posts_dir="$HOME/Blog"
	git_dir="$HOME/Git/JamesLochhead"
	blog_dir="$HOME/Git/JamesLochhead/lochhead.me"
	if [[ ! -d "$blog_dir" ]]; then
		mkdir -p "$git_dir"
		cd "$git_dir" && git clone https://github.com/JamesLochhead/lochhead.me
	fi
	ln -sf "$blog_dir/notes" "$notes_dir"
	ln -sf "$blog_dir/scratchpads" "$scratchpads_dir"
	ln -sf "$blog_dir/_posts" "$blog_posts_dir"
}

git_setup() {
	git config --global user.email "james@lochhead.me"
	git config --global user.name "James Lochhead"
	git config --global init.defaultBranch main
	git config --global user.signingkey B098DF51A57627121177DC3C180AB694A7EF5FC0
	git config --global gpgsign true
	git config --global pull.rebase true
	git config --global merge.tool vimdiff
	git config --global merge.conflictstyle diff3
	git config --global mergetool.prompt false

}

main "$@"
