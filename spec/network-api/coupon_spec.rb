require 'helper'

describe NetworkApi::Coupon do
  subject { NetworkApi::Coupon }
  it { should respond_to :find_by_code }
end
