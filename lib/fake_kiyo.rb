require 'fake_kiyo/configuration'
require 'fake_kiyo/initializers/webmock'
require 'fake_kiyo/stub_app'
require 'fake_kiyo/stub_kiyo'

module FakeKiyo
  extend Configuration

  def self.stub_kiyo
    FakeKiyo::StubKiyo.boot_once
    stub_request(:any, /k-sequencing.datawow.io/).to_rack(FakeKiyo::StubApp)
  end
end