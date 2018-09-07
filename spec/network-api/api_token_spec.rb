require 'helper'

describe NetworkApi::ApiToken do
  subject { NetworkApi::ApiToken }
  it { should respond_to :refresh_token! }
end
