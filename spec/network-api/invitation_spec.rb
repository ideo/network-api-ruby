require 'helper'

describe NetworkApi::Invitation do
  subject { NetworkApi::Invitation }

  it { should respond_to :bulk_create }
end
