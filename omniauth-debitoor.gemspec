# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/debitoor/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-debitoor"
  spec.version       = Omniauth::Debitoor::VERSION
  spec.authors       = ["Alessio Santo"]
  spec.email         = ["alessio.santocs@gmail.com"]

  spec.summary       = "Omniauth oauth2 strategy for debitoor"
  spec.description   = "With this gem you will be able to use debitoor as a provider in your omniauth configuration"
  spec.homepage      = "https://github.com/milanmaison/omniauth-debitoor"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "omniauth", "~> 1.2"
  spec.add_dependency "omniauth-oauth2", "<= 1.4"
  spec.add_dependency "oauth2", "~> 1.2"

  spec.add_development_dependency "bundler", ">= 2.2.15"
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "rspec", "~> 3.0"
end
