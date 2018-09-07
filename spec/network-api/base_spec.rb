require 'helper'

describe NetworkApi::Base do
  describe 'initialize' do
    let(:network_api_url) { 'https://profile.ideo.com/api/v1' }

    it 'sets .site if given' do
      NetworkApi::Base.site = network_api_url
      expect(NetworkApi::Base.site).to eq(network_api_url)
    end
  end
end
