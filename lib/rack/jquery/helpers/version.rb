module Rack
  module JQuery

    JQUERY_VERSION = "1.9.1"

    # This is the release date of the jQuery file, it makes an easy "Last-Modified" date for setting the headers around caching.
    # @todo remember to change Last-Modified with each release!
    JQUERY_VERSION_DATE = "Mon, 04 Feb 2013 00:00:00 GMT"

    JQUERY_UI_VERSION = "1.10.1"

    # This is the release date of the jQuery-UI file, it makes an easy "Last-Modified" date for setting the headers around caching.
    # @todo remember to change Last-Modified with each release!
    JQUERY_UI_VERSION_DATE = "Fri, 15 Feb 2013 00:00:00 GMT"

    module Helpers
      VERSION = "0.0.1"
    end
  end
end
