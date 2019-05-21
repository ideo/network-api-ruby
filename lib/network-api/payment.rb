module NetworkApi
  class Payment < Base
    has_one :payment_method
    has_one :user
  end
end
