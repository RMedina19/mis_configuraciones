# Customize zsh shell for macOs

# Customized prompt 
# Ref: https://linuxhandbook.com/customize-zsh-prompt/
#PS1="%D %T %n@%m %1~: "

# Customized prompt with text styling
#PS1="%D %T %B%n%b@%m %1~: "

# Add customized colors (catppuccin frappe color scheme)
PS1="%F{#a5adce}%T%f %F{#a6d189}%B%n%b@%m%f %F{#81c8be}%1~%f: "


# Enable coloring of different file types 	
# Ref: https://superuser.com/questions/528228/how-can-i-configure-the-color-of-ls-directory-under-zsh
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
alias ll="ls -alG"

