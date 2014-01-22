# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nugz/version'

Gem::Specification.new do |spec|
  spec.name          = "nugz"
  spec.version       = Nugz::VERSION
  spec.authors       = ["Ben Lewis", "Ben Horne", "Bryana Knight", "Darryl Pequeen"]
  spec.email         = ["bennlewis@gmail.com", "benhorne44@gmail.com", "brknig11@gmail", "pequickster@msn.com"]
  spec.description   = "The Nugz gem makes it easy to consume the MileHigh API. It
                        can be found at http://www.milehighbuzz.co/api/v1/reviews
                        and http://www.milehighbuzz.co/api/v1/stores."
  spec.summary       = "This gem makes it easy to consume the MileHigh API."
  spec.homepage      = "http://www.milehighbuzz.co"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"

  spec.add_dependency "faraday"
  spec.add_dependency "json"
end
