module NetworkApi
  class MailingList < Base
    has_one :application
    has_many :mailing_list_memberships
  end
end
