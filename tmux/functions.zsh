function tmux-status-uptime() {
  uptime | awk '{split(substr($0, index($0, "load")), a, ":"); print a[2]}'
}
