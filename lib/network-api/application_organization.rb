module NetworkApi
  class ApplicationOrganization < Base
    has_one :application
    has_one :organization

    def self.find_by_external_id(external_id)
      where(
        external_id: external_id
      )
    end
  end
end
