# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)
require "b3s_emoticons/version"

Gem::Specification.new do |s|
  s.name          = "b3s_emoticons"
  s.version       = B3sEmoticons::VERSION
  s.authors       = ["Inge Jørgensen"]
  s.email         = ["inge@manualdesign.no"]
  s.summary       = "B3S Emoticons"
  s.description   = "B3S Emoticons"
  s.homepage      = ""
  s.license       = "MIT"

  s.required_ruby_version = ">= 2.7.0"

  s.files = Dir[
    "{app,config,db,lib,vendor}/**/*",
    "LICENSE.txt",
    "Rakefile",
    "README.md"
  ]

  s.add_development_dependency "rake"
end
