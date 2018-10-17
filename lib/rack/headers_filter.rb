module Rack
  class HeadersFilter
    BLACKLIST_HEADERS = %w[
      HTTP_X_FORWARDED_HOST
    ]

    attr_reader :remove_headers

    def initialize(app, blacklist_headers: BLACKLIST_HEADERS)
      @remove_headers = blacklist_headers
      @app = app
    end

    def call(env)
      @remove_headers.each { |header| env.delete(header) }
      @app.call(env)
    end
  end
end
