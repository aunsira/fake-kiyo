require 'fake_kiyo'
require 'k_sequencing'
require 'pry'
require 'rspec'
require 'rack/test'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.before :each do
    FakeKiyo.stub_kiyo
  end

  config.order = 'random'
end
