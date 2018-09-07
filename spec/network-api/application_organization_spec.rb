require 'helper'

describe NetworkApi::ApplicationOrganization do
  subject { NetworkApi::ApplicationOrganization }
  it { should respond_to :find_by_external_id }
end
