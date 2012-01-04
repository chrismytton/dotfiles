# A simple way to track which are the most used directories on your system.
# Every time you change directory, it's logged in redis, then you can look
# at the aggregated results to see which directories you should alias.

# Check that redis is running.
if redis-cli info &> /dev/null; then

  # Push a value into a namespaced list.
  push() {
    redis-cli lpush "zsh:$1" "$2" > /dev/null
  }

  # Get a list of the top 10 most used directories from redis.
  topof() {
    redis-cli lrange "zsh:$1" 0 -1 |
    sort |
    uniq -c |
    sort -rn |
    head -n 50
  }

  # Every time the user changes directory, log it to redis.
  chpwd() {
    push directories "$(pwd)"
  }

  topdir() {
    topof directories
  }

  # Track which commands the user is executing.
  zshaddhistory() {
    push commands "${1%%$'\n'}"
  }

  topcmd() {
    topof commands
  }
fi
