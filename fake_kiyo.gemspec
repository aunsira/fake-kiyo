$:.push File.expand_path('../lib', __FILE__)

require 'fake_kiyo/version'

Gem::Specification.new do |s|
  s.name        = 'fake_kiyo'
  s.version     = FakeKiyo::VERSION
  s.authors     = ['Sira Sarakit']
  s.email       = ['aun.sira@gmail.com']

  s.files = Dir["{lib}/**/*"] + ['Rakefile', 'README.md']

  s.add_dependency 'capybara'
  s.add_dependency 'sinatra'
  s.add_dependency 'webmock'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'rspec'
end
