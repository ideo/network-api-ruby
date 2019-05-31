module NetworkApi
  class MailingListMembership < Base
    belongs_to :mailing_list
    has_one :user
    has_one :organization
  end
end
