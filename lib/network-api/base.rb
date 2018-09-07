# Base resource for models on Network API

module NetworkApi
  class Base < JsonApiClient::Resource
    class_attribute :network_api_host, :network_api_path,
                    :api_token, :client_id
  end

  Base.connection do |connection|
    # set Api Token headers
    connection.use FaradayMiddleware::OAuth2,
                   Base.api_token,
                   token_type: 'bearer'

    # log responses
    if Rails.env.test? || ENV['DEBUG'] == '1'
      connection.use Faraday::Response::Logger
    end
  end
end
