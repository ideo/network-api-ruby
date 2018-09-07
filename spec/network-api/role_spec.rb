require 'helper'

describe NetworkApi::Role do
  subject { NetworkApi::Role }
  it { should respond_to :find_by_organization }
  it { should respond_to :find_or_create_by_organization }
end
