require "rack/jquery/helpers/version"
require 'rack'

module Rack
  class JQuery

    # Bits of code that were being duplicated in each rack-jquery* library.
    module Helpers

      # Ten years in seconds.
      TEN_YEARS  = 60 * 60 * 24 * 365 * 10

      # Build the headers for caching.
      # @param [String] etag
      # @param [String] last_modified
      # @return [Hash]
      def caching_headers( etag, last_modified )
        {
          "Last-Modified" => last_modified,
          "Expires"    => Rack::Utils.rfc2109(Time.now + TEN_YEARS),
          "Cache-Control" => "max-age=#{TEN_YEARS},public",
          "Etag"          => etag,
          'Content-Type' =>'application/javascript; charset=utf-8'
        }
      end
    end
  end
end
