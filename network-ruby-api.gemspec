lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "network-api/version"

Gem::Specification.new do |gem|
  gem.add_dependency "json_api_client", "~> 1.5", ">= 1.5.3"

  gem.add_development_dependency "bundler", "~> 1.0"

  gem.authors       = ["Josh Schwartzman"]
  gem.email         = ["jschwartzman@ideo.com"]
  gem.description   = "IDEO Network API Ruby libraries."
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/ideo/network-api-ruby"
  gem.licenses      = %w[MIT]

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- spec/*`.split("\n")
  gem.name          = "network-api-ruby"
  gem.require_paths = %w[lib]
  gem.version       = NetworkApi::VERSION
end
