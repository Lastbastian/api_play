# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'animatedgifme/version'

Gem::Specification.new do |spec|
  spec.name          = "animatedgifme"
  spec.version       = Animatedgifme::VERSION
  spec.authors       = ["Chris Bastian"]
  spec.email         = ["peacethrubeats@gmail.com"]
  spec.summary       = %q{Simple API call to animated gif me}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_dependency "httparty", "~> 0.13.3"
end
