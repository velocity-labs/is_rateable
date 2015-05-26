# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'is_rateable/version'

Gem::Specification.new do |spec|
  spec.name          = "is_rateable"
  spec.version       = IsRateable::VERSION
  spec.authors       = ["Isaac Norman"]
  spec.email         = ["idn@papercloud.com.au"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.summary       = '5 star ratings for your Rails models'
  spec.description   = 'Allow any model to become rateable by any other model in your rails app.'
  spec.homepage      = "https://github.com/Papercloud/is_rateable."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
