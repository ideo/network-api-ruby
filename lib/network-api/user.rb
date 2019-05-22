module NetworkApi
  class User < Base
    custom_endpoint :generate_auth_token, on: :member, request_method: :get

    has_many :emails
    has_many :applications
    has_one :location
  end
end
