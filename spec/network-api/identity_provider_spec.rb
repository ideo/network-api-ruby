require 'helper'
require 'cgi'

describe NetworkApi::IdentityProvider do
  subject { NetworkApi::IdentityProvider }
  before do
    NetworkApi::Base.configure(
      url: 'https://profile.ideo.com/api/v1',
      api_token: 'token123',
      client_id: 'clientId123'
    )
  end

  describe '#auth_url' do
    let(:cookies) { {} }
    let(:auth_url) do
      subject.auth_url(
        provider: 'okta',
        redirect_url: 'https://www.shape.space',
        cookies: cookies
      )
    end
    let(:uri) { URI.parse(auth_url) }
    let(:query_params) { CGI.parse(uri.query) }

    it 'returns provider URL' do
      expect(uri.host).to eq('profile.ideo.com')
      expect(uri.path).to eq('/identity_providers/okta/auth')
      expect(query_params['client_id']).to eq(['clientId123'])
      expect(query_params['redirect_uri']).to eq(['https://www.shape.space'])
      expect(query_params['response_type']).to eq(['code'])
      expect(query_params['state']).to eq([NetworkApi::Base.state(cookies)])
    end

    context 'with existing state' do
      let!(:cookies) do
        {
          'IdeoSSO-State' => 'existing-state'
        }
      end

      it 'uses existing state if present' do
        expect(query_params['state']).to eq(['existing-state'])
      end
    end
  end
end
