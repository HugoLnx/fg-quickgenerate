# -*- encoding: utf-8 -*-
require File.expand_path('../lib/fg-quickgenerate/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Hugo Roque (a.k.a hugolnx)"]
  gem.email         = ["hugolnx@gmail.com"]
  gem.description   = %q{plugin for FactoryGirl: Easy way to quick generate samples}
  gem.summary       = %q{plugin for FactoryGirl: Easy way to quick generate samples}
  gem.homepage      = "http://github.com/hugolnx/fg-quickgenerate"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "fg-quickgenerate"
  gem.require_paths = ["lib"]
  gem.version       = Fg::Quickgenerate::VERSION

  gem.add_runtime_dependency(%q<factory_girl>, ["~> 4.x.x"])

  gem.add_development_dependency 'rspec',     '~> 2.x.x'
end
