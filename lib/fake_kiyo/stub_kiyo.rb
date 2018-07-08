require 'capybara'
require 'capybara/server'
require 'fake_kiyo/utils'
require 'sinatra/base'

module FakeKiyo
  class StubKiyo < Sinatra::Base
    def self.boot(port = FakeKiyo::Utils.find_available_port)
      instance = new
      Capybara.server = :webrick
      Capybara::Server.new(instance, port: port).tap(&:boot)
    end

    def self.boot_once
      @boot_once ||= FakeKiyo::StubKiyo.boot(server_port)
    end

    def self.server_port
      @server_port ||= FakeKiyo::Utils.find_available_port
    end
  end
end
