if [ -d /usr/local/share/chruby ]; then
  source /usr/local/share/chruby/chruby.sh
  RUBIES=(~/.rubies/*)
  chruby 1.9
fi
