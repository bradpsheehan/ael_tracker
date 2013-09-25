# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ael_tracker/version'

Gem::Specification.new do |spec|
  spec.name          = "ael_tracker"
  spec.version       = AelTracker::VERSION
  spec.authors       = ["Bradley Sheehan"]
  spec.email         = ["bradpsheehan@gmail.com"]
  spec.description   = %q{Allows people to access the Advanced Energy Legislation Tracker API using ruby}
  spec.summary       = %q{Ruby wrapper for Advanced Energy Legislation Tracker API.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.add_development_dependency "rspec"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency 'json'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
