module Digdag
  class Client
    module Project
      def get_project_by_name(name)
        options = {}
        options['name'] = name

        get('project', options)
      end

      def get_projects(name = nil)
        options = {}
        if name
          options['name'] = name
        end

        get('projects', options)['projects']
      end

      def get_project(id)
        get("projects/#{id}")
      end

      def get_revisions(id)
        get("projects/#{id}/revisions")
      end

      def get_workflow(id, params)
        options = {}
        options[:name] = params[:name]

        if params[:revision]
          options[:revision] = params[:revision]
        end

        get("projects/#{id}/workflow", options)
      end

      def get_workflow_by_name(id, name, params={})
        options = {}
        if params[:revision]
          options[:revision] = params[:revision]
        end

        get("projects/#{id}/workflows/#{name}", options)
      end

      def get_workflows(id, params={})
        options = {}

        if params[:name]
          options[:name] = params[:name]
        end

        if params[:revision]
          options[:revision] = params[:revision]
        end

        get("projects/#{id}/workflows", options)['workflows']
      end

      def get_schedules(id)
        get("projects/#{id}/sessions")['sessions']
      end

      def get_sessions
        # TODO
      end

      def get_archive
        # TODO
      end

      def delete_project
        # TODO
      end

      def put_project
        # TODO
      end

      def read_archive_metadata
        # TODO
      end

      def put_project_secret
        # TODO
      end

      def delete_project_secret
        # TODO
      end

      def get_project_secrets
        # TODO
      end
    end
  end
end
