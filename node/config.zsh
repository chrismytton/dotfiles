export NODE_PATH="/usr/local/lib/node_modules"

# Add npm's bin to the path if it exists.
if [ -d "/usr/local/share/npm/bin" ]; then
  path=(/usr/local/share/npm/bin $path)
fi

if command -v npm &>/dev/null; then
  . <(npm completion)
fi
