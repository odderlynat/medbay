# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'Medbay/version'

Gem::Specification.new do |spec|
  spec.name               = "Medbay"
  spec.version            = Medbay::VERSION
  spec.authors            = ["Natalie Leigh West"]
  spec.email              = ["iamtastycake@gmail.com"]

  spec.summary            = ""
  spec.description        = ""
  spec.homepage           = "https://github.com/tastycake/Medbay"
  spec.license            = "MIT"

  spec.files              = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir             = "exe"
  spec.executables        = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths      = ["lib"]

  spec.default_executable = 'medbay'

  spec.add_dependency "sinatra", "~> 1.4.6"
  spec.add_dependency "sinatra-contrib", "~> 1.4.6"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
