source "http://rubygems.org"

gem "rake", "~> 12.0"
# So we can use this with other gems that require older versions of Faraday
gem 'json_api_client', git: 'https://github.com/ideo/json_api_client.git', ref: '6d2e558'

group :test do
  gem "addressable", "~> 2.3.8", :platforms => %i[jruby ruby_18]
  gem "coveralls"
  gem "json", :platforms => %i[jruby ruby_18 ruby_19]
  gem "mime-types", "~> 1.25", :platforms => %i[jruby ruby_18]
  gem "rack-test"
  gem "rest-client", "~> 1.7.3", :platforms => %i[jruby ruby_18]
  gem "rspec", "~> 3.2"
  gem "rubocop", ">= 0.51", :platforms => %i[ruby_19 ruby_20 ruby_21 ruby_22 ruby_23 ruby_24]
  gem "simplecov", ">= 0.9"
  gem "webmock", "~> 3.0"
end

# Specify your gem's dependencies in network-ruby-api.gemspec
gemspec

ruby '2.4.3'
