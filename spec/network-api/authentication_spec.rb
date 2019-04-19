require 'helper'
require 'cgi'

describe NetworkApi::Authentication do
  subject { NetworkApi::Authentication }
  before do
    NetworkApi::Base.configure(
      url: 'https://profile.ideo.com/api/v1',
      api_token: 'token123',
      client_id: 'clientId123'
    )
  end
  let(:cookies) { {} }
  let(:uri) { URI.parse(url) }
  let(:query_params) { CGI.parse(uri.query) }
  let(:redirect_url) { 'https://www.shape.space' }
  let(:addtl_params) { {} }

  describe '#sign_in_url' do
    let(:url) do
      subject.sign_in_url(
        redirect_url: redirect_url,
        cookies: cookies,
        addtl_params: addtl_params
      )
    end

    it 'returns /users/sign_in' do
      expect(uri.host).to eq('profile.ideo.com')
      expect(uri.path).to eq('/users/sign_in')
    end

    it 'has valid oauth params' do
      expect_oauth_query_params_to_match
    end

    context 'with addtl_params' do
      let!(:addtl_params) {
        {
          auth_token: 'something'
        }
      }

      it 'adds them to query parameters' do
        expect(query_params['auth_token']).to eq(['something'])
      end
    end
  end

  describe '#sign_up_url' do
    let(:url) do
      subject.sign_up_url(
        redirect_url: redirect_url,
        cookies: cookies,
        addtl_params: addtl_params
      )
    end

    it 'returns /users/sign_up' do
      expect(uri.host).to eq('profile.ideo.com')
      expect(uri.path).to eq('/users/sign_up')
    end

    it 'has valid oauth params' do
      expect_oauth_query_params_to_match
    end

    context 'with addtl_params' do
      let!(:addtl_params) {
        {
          auth_token: 'something'
        }
      }

      it 'adds them to query parameters' do
        expect(query_params['auth_token']).to eq(['something'])
      end
    end
  end

  describe '#provider_auth_url' do
    let(:url) do
      subject.provider_auth_url(
        provider: 'okta',
        redirect_url: redirect_url,
        cookies: cookies,
        addtl_params: addtl_params
      )
    end

    it 'returns provider URL' do
      expect(uri.host).to eq('profile.ideo.com')
      expect(uri.path).to eq('/identity_providers/okta/auth')
      expect_oauth_query_params_to_match
    end

    context 'with addtl_params' do
      let!(:addtl_params) {
        {
          auth_token: 'something'
        }
      }

      it 'adds them to query parameters' do
        expect(query_params['auth_token']).to eq(['something'])
      end
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

  private

  def expect_oauth_query_params_to_match
    expect(query_params['client_id']).to eq(['clientId123'])
    expect(query_params['redirect_uri']).to eq(['https://www.shape.space'])
    expect(query_params['response_type']).to eq(['code'])
    expect(query_params['state']).to eq([NetworkApi::Base.state(cookies)])
  end
end
