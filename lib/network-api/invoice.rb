module NetworkApi
  class Invoice < Base
    has_one :organization
    has_many :invoice_items
    has_many :payment_methods
  end
end
