require 'faraday'
require File.expand_path('../version', __FILE__)

module Digdag
  module Configuration
    VALID_OPTIONS_KEYS = [
      :endpoint,
      :use_logger,
      :debug_net_http
    ].freeze

    DEFAULT_ENDPOINT = 'http://localhost:65432/'
    DEFAULT_USE_LOGGER = false
    DEFAULT_DEBUG_NET_HTTP = false

    attr_accessor *VALID_OPTIONS_KEYS

    def self.extended(base)
      base.reset
    end

    def options
      VALID_OPTIONS_KEYS.inject({}) do |option, key|
        option.merge!(key => send(key))
      end
    end

    def reset
      self.endpoint = DEFAULT_ENDPOINT
      self.use_logger = DEFAULT_USE_LOGGER
      self.debug_net_http = DEFAULT_DEBUG_NET_HTTP
    end
  end
end
