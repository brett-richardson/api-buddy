$LOAD_PATH.unshift File.expand_path '../lib', __FILE__
require 'api_buddy/version'

Gem::Specification.new do |s|
	s.name         = 'api-buddy'
	s.summary      = 'Document, stub and test JSON APIs with one friendly DSL'
	s.description  = 'Document, stub and test JSON APIs with one friendly DSL'
	s.version      =  ApiBuddy::VERSION
	s.date         = '2015-06-28'
	s.homepage     = 'http://mebrett.com'
	s.authors      = ['Brett Richardson']
	s.email        = ['brett.richardson.nz@gmail.com']
	s.require_path = 'lib'
	s.files        = Dir.glob('lib/**/*') + %w{Gemfile Guardfile MIT-LICENSE README.md}

  s.add_dependency 'activesupport'

  # Utilities
	s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'

  # Tests
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rspec-its'
  s.add_development_dependency 'rspec-nc'
  s.add_development_dependency 'fuubar'
  s.add_development_dependency 'pry'

  # Guard
	s.add_development_dependency 'guard'
	s.add_development_dependency 'guard-rspec'
	s.add_development_dependency 'guard-bundler'
end
