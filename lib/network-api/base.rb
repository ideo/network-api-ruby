# Base resource for models on Network API

module NetworkApi
  class Base < JsonApiClient::Resource
    class_attribute :api_token, :client_id

    # There is a bug with included resources where ID is cast as an integer,
    # and then the resource can't be auto-linked
    property :id, type: :string

    def self.configure(url:, api_token:, client_id:)
      self.site = url # e.g. https://profile.ideo.com/api/v1/
      self.api_token = api_token
      self.client_id = client_id

      # Sets up connection with token
      connection do |connection|
        # Set Api Token header
        connection.use FaradayMiddleware::OAuth2,
                       Base.api_token,
                       token_type: 'bearer'

        # Log requests if test or DEBUG == '1'
        if defined?(Rails) == 'constant' &&
           (Rails.env.test? || ENV['DEBUG'] == '1')
          connection.use Faraday::Response::Logger
        end
      end
    end
  end
end
