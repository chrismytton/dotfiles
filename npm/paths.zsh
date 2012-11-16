# Add npm's bin to the path if it exists.
if [ -d "/usr/local/share/npm/bin" ]; then
  path=(/usr/local/share/npm/bin $path)
fi
