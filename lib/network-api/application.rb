module NetworkApi
  class Application < Base
    custom_endpoint :me, on: :collection, request_method: :get
  end
end
