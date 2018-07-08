require 'spec_helper'

describe FakeKiyo::Configuration, '#fixture_path' do
  let!(:new_fixture_path) { '/custom/fixture/path' }
  let!(:previous_fixture_path) { FakeKiyo.fixture_path }

  before do
    FakeKiyo.configure do |config|
      config.fixture_path = new_fixture_path
    end
  end

  after do
    FakeKiyo.configure do |config|
      config.fixture_path = previous_fixture_path
    end
  end

  it 'returns the config fixture path' do
    expect(FakeKiyo.fixture_path).to eq new_fixture_path
  end
end
