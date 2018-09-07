module NetworkApi
  class Coupon < Base
    custom_endpoint :by_code, on: :collection, request_method: :get

    def self.find_by_code(code)
      by_code(code: code)
    end
  end
end
