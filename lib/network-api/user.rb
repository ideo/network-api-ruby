module NetworkApi
  class User < Base
    has_many :emails
    has_many :applications
    has_one :location
  end
end
