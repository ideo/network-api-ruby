module NetworkApi
  class UsageRecord < Base
    property :external_organization_id, type: :string
    property :quantity, type: :integer
    property :timestamp, type: :integer
  end
end
