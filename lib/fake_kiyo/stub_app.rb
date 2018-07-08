require 'sinatra/base'

module FakeKiyo
  class StubApp < Sinatra::Base

    post '/api/images/closed_questions' do
      json_response 201, fixture('create_image_closed_question')
    end

    private

    def fixture(file_name)
      file_path = File.join(FakeKiyo.fixture_path, "#{file_name}.json")
      File.open(file_path, 'rb').read
    end

    def json_response(response_code, response_body)
      content_type :json
      status response_code
      response_body
    end
  end
end