require 'json_api_client'

if defined?(ActiveSupport) == 'constant'
  # Use correct page parameters for Network API
  # (only works when included in Rails environment)
  JsonApiClient::Paginating::Paginator.page_param = 'number'
  JsonApiClient::Paginating::Paginator.per_page_param = 'size'
end

require 'network-api/version'
require 'network-api/base'
require 'network-api/api_token'
require 'network-api/application_organization'
require 'network-api/application'
require 'network-api/coupon'
require 'network-api/email'
require 'network-api/invoice_item'
require 'network-api/invoice'
require 'network-api/location'
require 'network-api/organization'
require 'network-api/payment_method'
require 'network-api/plan'
require 'network-api/role'
require 'network-api/subscription'
require 'network-api/usage_record'
require 'network-api/user'
require 'network-api/users_role'
