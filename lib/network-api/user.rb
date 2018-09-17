module NetworkApi
  class User < Base
    has_many :emails
  end
end
