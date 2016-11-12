# Use rbenv for managing ruby versions.
eval "$(rbenv init - --no-rehash)"

# Speed up nokogiri installs.
export NOKOGIRI_USE_SYSTEM_LIBRARIES=1

# Bundler aliases
alias be='bundle exec'
alias bi='bundle install'
alias bu='bundle update'
