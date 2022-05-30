require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Debitoor < OmniAuth::Strategies::OAuth2
      # Give your strategy a name.
      option :name, "debitoor"

      # This is where you pass the options you would pass when
      # initializing your consumer from the OAuth gem.
      option :client_options, {
        :site => "https://invoices.sumup.com/",
        :authorize_url => "https://invoices.sumup.com/login/oauth2/authorize",
        :token_url => "https://invoices.sumup.com/login/oauth2/access_token"
      }

      # These are called after authentication has succeeded. If
      # possible, you should try to set the UID without making
      # additional calls (if the user id is returned with the token
      # or as a URI parameter). This may not be possible with all
      # providers.
      uid { raw_info["id"] }

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get("/api/environment/v1").parsed
      end
    end
  end
end
