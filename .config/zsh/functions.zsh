# =========================================================
# PATH manipulation commands must be defined as functions 
# or aliases inside .zshrc because standalone binaries 
# inside .local/bin execute in a child subshell. A child 
# process cannot modify the environment of the parent shell. 
# Defining it here and importing on .zshrc forces the logic 
# to execute within the current shell context.
# =========================================================

path_remove() {
    PATH=$(echo -n "$PATH" | awk -v RS=: -v ORS=: "\$0 != \"$1\"" | sed 's/:$//')
}

path_append() {
    path_remove "$1"
    PATH="${PATH:+"$PATH:"}$1"
}

path_prepend() {
    path_remove "$1"
    PATH="$1${PATH:+":$PATH"}"
}