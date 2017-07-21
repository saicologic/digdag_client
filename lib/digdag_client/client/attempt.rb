require 'time'

module Digdag
  class Client
    module Attempt
      def get_attempts(params={})

        options = {}
        if params[:include_retried] == 1
          options[:include_retried] = 1
        end

        if params[:project]
          options[:project] = params[:project]
        end

        if params[:workflow]
          options[:workflow] = params[:workflow]
        end

        get("attempts", options)["attempts"]
      end

      def get_attempt(id)
        get("attempts/#{id}")
      end

      def get_tasks_of_attempt(id)
        get("attempts/#{id}/tasks")["tasks"]
      end

      def get_attemp_retries(id)
        get("attempts/#{id}/retries")
      end

      def start_attempt(params={})
        options = {}
        options[:params] = params[:params]
        if params[:sessionTime].is_a?(Time)
          options[:sessionTime] = params[:sessionTime].iso8601
        end

        options[:workflowId] = params[:workflowId]
        put("attempts", options)
      end

      def kill_attempt(id)
        post("attempts/#{id}/kill")
      end
    end
  end
end