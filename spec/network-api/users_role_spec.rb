require 'helper'

describe NetworkApi::UsersRole do
  subject { NetworkApi::UsersRole }
  it { should respond_to :create_by_uid }
  it { should respond_to :find_by_uid }
  it { should respond_to :remove_by_uid }
end
