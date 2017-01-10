# -*- encoding: utf-8 -*-
require File.expand_path('../lib/serverspec_vyos_config/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "serverspec-vyos-config"
  spec.version       = ServerspecVyOSConfig::VERSION
  spec.authors       = ["Yuya Kusakabe"]
  spec.email         = ["yuya.kusakabe@gmail.com"]
  spec.description   = "Serverspec resource type for VyOS Config."
  spec.summary       = "Serverspec resource type for VyOS Config."
  spec.homepage      = "https://github.com/higebu/serverspec-vyos-config"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($\)
  spec.executables   = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths  = ["lib"]

  spec.rubyforge_project = "serverspec-vyos-config"

  spec.add_dependency "serverspec", "~> 2"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_runtime_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rake", "~> 10.1.1"
end
