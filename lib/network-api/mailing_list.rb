module NetworkApi
  class MailingList < Base
    has_one :application
    has_many :mailing_list_memberships

    # Easily subscribe/update users for a mailing list using this endpoint
    #
    # Params:
    #   user_uids (Array)
    #   organization_id (Integer)
    custom_endpoint :batch_create_or_update_memberships, on: :member, request_method: :post
  end
end
