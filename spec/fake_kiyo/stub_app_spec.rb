require 'spec_helper'

describe FakeKiyo::StubApp do
  describe 'POST /images/closed_questions' do
    it 'returns image closed question response' do
      result = KSequencing.image_closed_question.create(
        token: 'testing',
        data: 'https://assets-cdn.github.com/images/modules/open_graph/github-mark.png',
        postback_url: 'https://datawow.io/',
        postback_method: 'GET'
      )

      expect(result).not_to be_nil
    end
  end
end
