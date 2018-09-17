module NetworkApi
  class Subscription < Base
    # Use has_one instead of belongs_to, which is a nested resource
    has_one :payment_method
    has_one :coupon
    has_one :plan

    # The relationships aren't working properly in 1.5.3 of this library
  end
end
