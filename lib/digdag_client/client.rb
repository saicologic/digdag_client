module Digdag
  class Client < API
    Dir[File.expand_path('../client/*.rb', __FILE__)].each{|f| require f}

    include Digdag::Client::Attempt
    include Digdag::Client::Workflow
    include Digdag::Client::Version
    include Digdag::Client::Session
    include Digdag::Client::Log
    include Digdag::Client::Project
  end
end
