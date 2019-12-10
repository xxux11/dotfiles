export PATH="$HOME/bin:/usr/local/bin:/Users/joakim/Library/Python/3.7/bin:/Users/joakim/scripts:$PATH";

for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

shopt -s nocaseglob;

shopt -s histappend;

shopt -s cdspell;

for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null;
done;


if which brew &> /dev/null && [ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]; then
	export BASH_COMPLETION_COMPAT_DIR="$(brew --prefix)/etc/bash_completion.d";
	source "$(brew --prefix)/etc/profile.d/bash_completion.sh";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;


if type _git &> /dev/null; then
	complete -o default -o nospace -F _git g;
fi;

[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

complete -W "NSGlobalDomain" defaults;

complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall;
