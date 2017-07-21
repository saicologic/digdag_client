module DebugNetHttp
  def net_http_connection(env)
    http = super
    http.set_debug_output $stderr
    http
  end
end

module Faraday
  class Adapter
    class NetHttp
      prepend DebugNetHttp
    end
  end
end
