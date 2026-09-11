_lazy_load_nvm() {
  # Unset the placeholders so they aren't called in an infinite loop
  unset -f nvm node npm npx yarn

  # Load NVM and its autocomplete definitions
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
}

# Define placeholders for Node-related commands
nvm()  { _lazy_load_nvm; nvm "$@"; }
node() { _lazy_load_nvm; node "$@"; }
npm()  { _lazy_load_nvm; npm "$@"; }
npx()  { _lazy_load_nvm; npx "$@"; }
yarn() { _lazy_load_nvm; yarn "$@"; }