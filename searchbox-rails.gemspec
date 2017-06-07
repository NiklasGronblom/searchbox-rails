# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'searchbox/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "searchbox-rails"
  spec.version       = Searchbox::Rails::VERSION
  spec.authors       = ["Niklas Grönblom"]
  spec.email         = ["niklas.gronblom@abo.fi"]

  spec.summary       = %q{searchbox-rails wraps a fork of rpheath's searchbox.js to use with the asset pipeline by Rails.}
  spec.description   = %q{}
  spec.homepage      = "http://github.com/NiklasGronblom/searchbox-rails"

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

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"

  #spec.add_dependency "railties", ">= 3.2", "< 5.0"
end
