# Add homebrew python binaries to PATH
if [ -d "/usr/local/share/python" ]; then
  path=("/usr/local/share/python" $path)
fi
