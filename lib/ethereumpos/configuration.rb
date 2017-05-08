module Ethereumpos
  module Configuration
    TEST_MODE  = true
    API_KEY  = 'dc6zaTOxFJmzC'
    API_SECRET  = 'nmSdc6zaTOxiwjsiwjFJmzC'
    TEST_ENDPOINT = "https://testapi.ethereumpos.com"
    MAIN_ENDPOINT = "https://api.ethereumpos.com"
    VERSION = 1

    class << self
      attr_writer :version, :api_key, :api_secret, :test_mode

      def configure(&block)
        yield self
        self
      end

      def version
        @version ||= VERSION
      end

      def endpoint
        if TEST_MODE
          TEST_ENDPOINT
        else
          MAIN_ENDPOINT
        end
      end

      def api_key
        @api_key ||= API_KEY
      end

      def api_secret
        @api_secret ||= API_SECRET
      end

      def test_mode
        @test_mode ||= TEST_MODE
      end

    end
  end
end