module Digdag
  class Client
    module Log

      def log_file_put_result(attempt_id, params={})
        raise NotImplementedError, "TODO"
      end

      def direct_upload_handle(attempt_id, params={})
        raise NotImplementedError, "TODO"
      end

      def log_file_handle_collection(attempt_id, params={})
        options = {}
        if params[:task]
          options[:task] = params[:task]
        end

        get("/logs/#{attempt_id}/files", params)
      end

      def get_file(attempt_id, file_name)
        get("logs/#{attempt_id}/files/#{file_name}")
      end
    end
  end
end
