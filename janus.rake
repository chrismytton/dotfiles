# janus plugins
vim_plugin_task "jade",   "git://github.com/digitaltoad/vim-jade.git"
vim_plugin_task "stylus", "git://github.com/wavded/vim-stylus.git"
vim_plugin_task "slim", "git://github.com/bbommarito/vim-slim.git"

vim_plugin_task "php" do
  php_vim = "https://gist.github.com/raw/897883/23b0937d749e18ce4a2ebc7bc54080f6e9df41ff/php.vim"
  system "mkdir -p after/ftplugin && curl #{php_vim} > after/ftplugin/php.vim"
end