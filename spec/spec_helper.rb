require 'fake_kiyo'
require 'pry'
require 'rspec'
require 'rack/test'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
  
  config.order = 'random'
end
