# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'superstruct/version'

Gem::Specification.new do |spec|
  spec.name          = "superstruct"
  spec.version       = Superstruct::VERSION
  spec.authors       = ["Martin Schmidt"]
  spec.email         = ["martin.schmidt@bk.ru"]

  spec.summary       = "SuperStruct is an enhanced version of the Ruby Standard library {Struct}."
  spec.description   = [
    'Compared with the original version, it provides the following additional features:',
    ' * ability to initialize an instance from Hash',
    ' * ability to pass a block on creation',
    'It\'s taken from Simone Carletti\'s whois: https://github.com/weppos/whois and has been put into this gem.'
  ].join("\n") + "\n"
  spec.homepage      = "https://github.com/martin-schmidt/superstruct"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'awesome_print'

end
