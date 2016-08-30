# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dogeify_jgsa/version'

Gem::Specification.new do |spec|
  spec.name          = "dogeify_jgsa"
  spec.version       = DogeifyJgsa::VERSION
  spec.authors       = ["Guillermo Salas"]
  spec.email         = ["jgsa93memo@gmail.com"]

  spec.summary       = %q{English to Doge translations}
  spec.description   = %q{Converts English to Doge. Based on @mhuggins' gem Dogeify.}
  spec.homepage      = "https://github.com/jgsa/dogeify_jgsa"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'engtagger'

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
