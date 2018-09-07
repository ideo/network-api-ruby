require 'helper'

describe NetworkApi::Base do
  describe '.configure' do
    let(:network_api_url) { 'https://profile.ideo.com/api/v1' }
    let(:api_token) { 'NETWORK_API_TOKEN ' }
    let(:client_id) { 'NETWORK_CLIENT_ID' }

    before do
      NetworkApi::Base.configure(
        url: network_api_url,
        api_token: api_token,
        client_id: client_id
      )
    end

    it 'sets .site' do
      expect(NetworkApi::Base.site).to eq(network_api_url)
    end
  end
end
