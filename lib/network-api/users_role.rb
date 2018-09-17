module NetworkApi
  class UsersRole < Base
    has_one :user
    has_one :role

    def self.create_by_uid(user_uid:, role_id:)
      create(
        user_uid: user_uid,
        role_id: role_id
      )
    end

    def self.find_by_uid(user_uid:, role_id:)
      where(
        user_uid: user_uid,
        role_id: role_id
      ).first
    end

    def self.remove_by_uid(user_uid:, role_id:)
      users_role = find_by_uid(
        user_uid: user_uid,
        role_id: role_id
      )
      return true if users_role.blank?
      users_role.destroy
    end
  end
end
