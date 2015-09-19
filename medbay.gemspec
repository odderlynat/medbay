# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'medbay/version'

Gem::Specification.new do |spec|
  spec.name               = "medbay"
  spec.version            = Medbay::VERSION
  spec.authors            = ["Natalie Leigh West"]
  spec.email              = ["iamtastycake@gmail.com"]

  spec.summary            = "Self-contained app for running service health checks"
  spec.description        = "Self-contained app for running service health checks"
  spec.homepage           = "https://github.com/tastycake/medbay"
  spec.license            = "MIT"

  spec.files              = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths      = ["lib"]

  spec.add_dependency "sinatra", "~> 1.4.6"
  spec.add_dependency "sinatra-contrib", "~> 1.4.6"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
