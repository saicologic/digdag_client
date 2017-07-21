require 'faraday_middleware'

module Digdag
  module Connection
    private
    def connection
      if self.debug_net_http == true
        require File.expand_path('../debug_net_http', __FILE__)
      end

      Faraday.new(url: self.endpoint) do |faraday|
        faraday.request  :json
        faraday.response :json, :content_type => /\bjson$/
        faraday.response :logger if use_logger
        faraday.adapter :net_http
      end
    end
  end
end
