# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cex/websocket/version'

Gem::Specification.new do |spec|
  spec.name          = 'cexio-websocket'
  spec.version       = CEX::Websocket::VERSION
  spec.authors       = ['Igor Malinovskiy']
  spec.email         = ['igor.malinovskiy@netfixllc.org']

  spec.summary       = 'CEX.io websocket client'
  spec.description   = 'Gem to listen CEX.io updates via websocket'
  spec.homepage      = 'https://github.com/psyipm/cexio-websocket'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_dependency 'activesupport', '>= 4.0'
  spec.add_dependency 'kontena-websocket-client', '~> 0.1.1'
end
