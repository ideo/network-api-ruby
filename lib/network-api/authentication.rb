module NetworkApi
  class Authentication
    # URL to sign in
    def self.sign_in_url(redirect_url:, cookies:, addtl_params: {})
      uri = uri_with_oauth_params(
        redirect_url: redirect_url,
        cookies: cookies,
        addtl_params: addtl_params
      )
      uri.path = '/users/sign_in'
      uri.to_s
    end

    # URL to create a new account
    def self.sign_up_url(redirect_url:, cookies:, addtl_params: {})
      uri = uri_with_oauth_params(
        redirect_url: redirect_url,
        cookies: cookies,
        addtl_params: addtl_params
      )
      uri.path = '/users/sign_up'
      uri.to_s
    end

    # URL to sign in with a specific provider, e.g. ford
    def self.provider_auth_url(provider:, redirect_url:, cookies:, addtl_params: {})
      uri = uri_with_oauth_params(
        redirect_url: redirect_url,
        cookies: cookies,
        addtl_params: addtl_params
      )
      uri.path = "/identity_providers/#{provider}/auth"
      uri.to_s
    end

    def self.uri_with_oauth_params(redirect_url:, cookies:, addtl_params: {})
      uri = URI(NetworkApi::Base.site)
      uri.query = addtl_params.merge(
        client_id: NetworkApi::Base.client_id,
        redirect_uri: redirect_url,
        response_type: 'code',
        state: NetworkApi::Base.state(cookies)
      ).to_query
      uri
    end
  end
end
