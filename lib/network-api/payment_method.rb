module NetworkApi
  class PaymentMethod < Base
    has_one :user
    has_one :organization
    has_one :organization
    has_one :application_organization
  end
end
