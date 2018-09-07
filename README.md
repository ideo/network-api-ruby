# IDEO Network API - Ruby

Ruby wrappers for IDEO Network API models.

## Installing

Add to your `Gemfile`:

```ruby
gem 'network-api-ruby', git: 'https://github.com/ideo/network-api-ruby.git'
```

Then `bundle install`.

## Usage

These three configuration variables must be set in an initializer (e.g. `/config/initializers/network_api.rb`):

```
require 'network-api'

NetworkApi::Base.configure(
  url: 'https://profile.ideo.com/api/v1',
  api_token: ENV['IDEO_NETWORK_API_TOKEN'],
  client_id: ENV['IDEO_NETWORK_OAUTH_CLIENT_ID']
)
```

Then you can use any of the supported models:

```
NetworkApi::ApiToken
NetworkApi::ApplicationOrganization
NetworkApi::Application
NetworkApi::Coupon
NetworkApi::Email
NetworkApi::InvoiceItem
NetworkApi::Invoice
NetworkApi::Location
NetworkApi::Organization
NetworkApi::PaymentMethod
NetworkApi::Plan
NetworkApi::Role
NetworkApi::Subscription
NetworkApi::UsageRecord
NetworkApi::User
NetworkApi::UsersRole
```

To enable detailed request logging, you can set `ENV['DEBUG'] = '1'`
