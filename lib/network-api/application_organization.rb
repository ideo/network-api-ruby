module NetworkApi
  class ApplicationOrganization < Base
    def self.find_by_external_id(external_id)
      where(
        external_id: external_id
      )
    end
  end
end
