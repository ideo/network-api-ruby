module NetworkApi
  class ApiToken < Base
    custom_endpoint :info, on: :collection, request_method: :get
    custom_endpoint :refresh, on: :collection, request_method: :post

    def self.refresh_token!(current_refresh_token)
      refresh(
        data: {
          attributes: {
            refresh_token: current_refresh_token
          }
        }
      )
    end
  end
end
