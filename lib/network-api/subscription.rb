module NetworkApi
  class Subscription < Base
    belongs_to :payment_method
    belongs_to :plan
    belongs_to :coupon
  end
end
