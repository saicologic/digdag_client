module Digdag
  class Client
    module Session
      def get_sessions(last_id = nil)
        options = {}
        if last_id
          options[:last_id] = last_id
        end
        get('sessions', options)['sessions']
      end

      def get_session(id)
        get("sessions/#{id}")
      end

      def get_session_attempts(id, last_id)
        options = {}
        if last_id
          options[:last_id] = last_id
        end
        get("sessions/#{id}/attempts", options)
      end
    end
  end
end
