module NetworkApi
  class IdentityProvider
    def self.auth_url(provider_name, redirect_uri, cookies)
      uri = URI(NetworkApi::Base.site)
      uri.query = {
        client_id: NetworkApi::Base.client_id,
        redirect_uri: redirect_uri,
        response_type: 'code',
        state: NetworkApi::Base.state(cookies)
      }.to_query
      uri.path = "/identity_providers/#{provider_name}/auth"
      uri.to_s
    end
  end
end
