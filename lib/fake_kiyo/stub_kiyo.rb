require 'capybara'
require 'capybara/server'
require 'fake_kiyo/utils'
require 'sinatra/base'

module FakeKiyo
  class StubKiyo < Sinatra::Base
    def self.boot(port = FakeKiyo::Utils.find_available_port)
      instance = new
      Capybara.server = :webrick
      Capybara::Server.new(instance, port).tap { |server| server.boot }
    end

    def self.boot_once
      @@kiyo_server ||= FakeKiyo::StubKiyo.boot(self.server_port)
    end

    def self.server_port
      @@kiyo_port ||= FakeKiyo::Utils.find_available_port
    end
  end
end