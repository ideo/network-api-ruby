module NetworkApi
  class Organization < Base
    ADMIN_ROLE = :admin

    has_many :applications
    has_many :application_organizations

    # TODO: deprecate this field?
    property :external_id, type: :string

    def self.find_by_external_id(external_id)
      where(
        client_id: client_id,
        external_id: external_id
      ).first
    end
  end
end
