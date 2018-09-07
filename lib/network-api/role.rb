module NetworkApi
  class Role < Base
    def self.find_by_organization(network_organization_id, name)
      where(
        name: name,
        resource_type: 'Organization',
        resource_id: network_organization_id
      ).first
    end

    def self.find_or_create_by_organization(network_organization_id, name)
      create(
        name: name,
        resource_type: 'Organization',
        resource_id: network_organization_id
      )
    end
  end
end
