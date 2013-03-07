require "rack/jquery/helpers/version"

module Rack
  module JQuery
    module Helpers

      def caching_headers( etag )
        {
          "Last-Modified" => JQUERY_UI_VERSION_DATE,
          "Expires"    => Rack::Utils.rfc2109(Time.now + TEN_YEARS),
          "Cache-Control" => "max-age=#{TEN_YEARS},public",
          "Etag"          => etag,
          'Content-Type' =>'application/javascript; charset=utf-8'
        }
      end
    end
  end
end
