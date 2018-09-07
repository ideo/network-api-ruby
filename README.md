# Network API - Ruby

Ruby libraries for IDEO Network API

## Installing

Add to your `Gemfile`:

```ruby
gem 'network-api-ruby', git: 'https://github.com/ideo/network-api-ruby.git'
```

Then `bundle install`.

## Usage

These three configuration variables must be set:

```
NetworkApi::Base.site = 'https://profile.ideo.com/api/v1'
NetworkApi::Base.api_token = 'IDEO_NETWORK_API_TOKEN'
NetworkApi::Base.client_id = 'IDEO_NETWORK_CLIENT_ID'
```

Then you can use any of the models in the network-api

To enable detailed request logging, you can set `DEBUG = '1'`
