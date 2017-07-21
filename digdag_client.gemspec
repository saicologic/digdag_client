# coding: utf-8
require File.expand_path('../lib/digdag_client/version', __FILE__)

Gem::Specification.new do |spec|

  spec.add_runtime_dependency('faraday', ['~> 0.12'])
  spec.add_runtime_dependency('faraday_middleware', ['~> 0.11'])

  spec.name          = "digdag_client"
  spec.version       = Digdag::VERSION.dup
  spec.authors       = ["saicologic"]
  spec.email         = ["saicologic@gmail.com"]

  spec.summary       = "Web API for Digdag Server"
  spec.description   = ""
  spec.homepage      = "https://github.com/saicologic/digdag_client"
  spec.license       = "Apache-2.0"
  spec.files         = `git ls-files`.split("\n")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
