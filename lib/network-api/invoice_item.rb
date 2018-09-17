module NetworkApi
  class InvoiceItem < Base
    has_one :invoice
    has_one :subscription
  end
end
