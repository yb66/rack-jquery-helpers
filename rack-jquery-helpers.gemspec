# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/jquery/helpers/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-jquery-helpers"
  spec.version       = Rack::JQuery::Helpers::VERSION
  spec.authors       = ["Iain Barnett"]
  spec.email         = ["iainspeed@gmail.com"]
  spec.description   = %q{Helpers for the rack-jquery, rack-jquery_ui, and rack-jquery_ui-themes libraries.}
  spec.summary       = %q{The gem description says it all.}
  spec.homepage      = "https://github.com/yb66/rack-jquery-helpers"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rack"
  spec.add_development_dependency "bundler", "~> 1.2"
  spec.add_development_dependency "rake"
end
