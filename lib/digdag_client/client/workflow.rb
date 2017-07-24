module Digdag
  class Client
    module Workflow

      def search_workflow(params={})
        options = {}
        options[:project] = params[:project]
        options[:name] = params[:name]

        get('workflow', options)
      end

      def get_workflows(params={})
        options = {}
        if params[:count]
          options[:count] = params[:count]
        end

        if params[:last_id]
          options[:last_id] = params[:last_id]
        end

        get('workflows', options)["workflows"]
      end

      def get_workflow(id)
        get("workflows/#{id}")
      end
    end
  end
end
