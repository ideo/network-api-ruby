module NetworkApi
  class UsageRecord < Base
    has_one :subscription

    property :external_organization_id, type: :string
    property :quantity, type: :integer
    property :timestamp, type: :integer
  end
end
