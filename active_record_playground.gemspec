# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_record_playground/version'

Gem::Specification.new do |spec|
  spec.name          = "active_record_playground"
  spec.version       = ActiveRecordPlayground::VERSION
  spec.authors       = ["Diego Salazar"]
  spec.email         = ["diego@greyrobot.com"]
  spec.summary       = %q{Let's you build Active Record models in memory to play around with}
  spec.description   = %q{Let's you build Active Record models in memory to play around with}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "active_record"
  spec.add_dependency "test-unit"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
