$LOAD_PATH.push File.expand_path('lib', __dir__)

require 'fake_kiyo/version'

Gem::Specification.new do |s|
  s.name        = 'fake_kiyo'
  s.version     = FakeKiyo::VERSION
  s.authors     = ['Sira Sarakit']
  s.email       = ['aun.sira@gmail.com']
  s.summary     = 'A fake Kiyo server.'

  s.files = Dir['{lib}/**/*'] + ['Rakefile', 'README.md']

  s.add_dependency 'capybara'
  s.add_dependency 'sinatra'
  s.add_dependency 'webmock'
  s.add_development_dependency 'k_sequencing'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'pry-byebug', '~> 3.4.2'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rubocop', '~> 0.50.0'
  s.add_development_dependency 'rubocop-rspec', '~> 1.12'
end
