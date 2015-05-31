# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dtvEsc/version'

Gem::Specification.new do |spec|
  spec.name          = "dtvEsc"
  spec.version       = DtvEsc::VERSION
  spec.authors       = ["Daniel Schmidt"]
  spec.email         = ["dschmidt@weluse.de"]
  spec.licenses    = ['MIT']

  spec.summary       = %q{the electronic sports management API from the DTV}
  spec.description   = %q{the electronic sports management API from the DTV (german dancesport association) - nicely wrapped for you}
  spec.homepage      = "https://github.com/DanielMSchmidt/dtv-esc"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "codeclimate-test-reporter"
end
