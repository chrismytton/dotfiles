# Open dotfiles for editing
edit-dotfiles() {
  (cd ~/.dotfiles; vim)
}

# Open private zsh config for editing
edit-dotzsh() {
  (cd ~/.zsh; vim)
}

# Convert a markdown document to mediawiki syntax
md2wiki() {
  pandoc -f markdown -t mediawiki "$@"
}

# Filter to convert YAML to JSON
yaml2json() {
  ruby -r yaml -r json -e 'puts YAML.load($stdin.read).to_json'
}

# Search HTML on stdin for a selector (CSS or XPath).
noko() {
  ruby -r nokogiri -e 'puts Nokogiri::HTML($stdin.read).search(ARGV.first)' $1
}

# Use the GitHub API to render a markdown preview of a document
markdown-preview() {
  cat | ruby -r octokit -e 'puts Octokit.markdown($stdin.read)' | webpage | bcat
}

# Show the summary for each gem in a `Gemfile`.
bundle-describe-dependencies() {
  bundle exec ruby -rjson -e 'Bundler.locked_gems.dependencies.each { |g| puts "#{g.name.ljust(50)}#{g.to_spec.summary}" }'
}
