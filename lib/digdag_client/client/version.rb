module Digdag
  class Client
    module Version
      def get_version
        get('version')
      end

      def check_client_version(params={})
        options = {}
        options[:client] = params[:client]
        get('version/check', options)
      end
    end
  end
end
