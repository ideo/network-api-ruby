module NetworkApi
  class Invitation < Base
    custom_endpoint :bulk_create, on: :collection, request_method: :post
  end
end
