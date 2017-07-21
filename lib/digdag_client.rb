require File.expand_path('../digdag_client/configuration', __FILE__)
require File.expand_path('../digdag_client/api', __FILE__)
require File.expand_path('../digdag_client/client', __FILE__)

module Digdag
  extend Configuration

  def self.client(options={})
    Digdag::Client.new(options)
  end
end