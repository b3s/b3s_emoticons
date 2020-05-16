# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'b3s_emoticons/version'

Gem::Specification.new do |spec|
  spec.name          = "b3s_emoticons"
  spec.version       = B3sEmoticons::VERSION
  spec.authors       = ["Inge Jørgensen"]
  spec.email         = ["inge@manualdesign.no"]
  spec.summary       = "B3S Emoticons"
  spec.description   = "B3S Emoticons"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
