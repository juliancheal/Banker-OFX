# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ofx/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors     = ['Kyle Welsby', 'Chuck Hardy', 'Nando Vieira', 'Julian Cheal']
  gem.email       = ['app@britishruby.com', 'fnando.vieira@gmail.com']
  gem.homepage    = 'https://github.com/BritRuby/Banker-OFX'
  gem.description = 'A simple OFX (Open Financial Exchange) parser originally forked from Nando Vieira. Now supports Bank Accounts and Credit Cards as well as Multiple Accounts.'
  gem.summary     = gem.description

  gem.add_runtime_dependency 'nokogiri'

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'simplecov'

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split('\n')
  gem.executables   = `git ls-files -- bin/*`.split('\n').map{|f| File.basename(f)}
  gem.name          = 'banker-ofx'
  gem.require_paths = ['lib']
  gem.platform      = Gem::Platform::RUBY
  gem.version       = OFX::Version::STRING
end
