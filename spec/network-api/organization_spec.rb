require 'helper'

describe NetworkApi::Organization do
  subject { NetworkApi::Organization }
  it { should respond_to :find_by_external_id }

  it 'should have admin role defined' do
    expect(subject::ADMIN_ROLE).to eq(:admin)
  end
end
