require 'rails_helper'

RSpec.describe 'get: /words/search' do
  describe 'requesting a search' do
    it 'returns quested info' do
      VCR.use_cassette 'word search' do
      get "/words/search/caterwaul"
      result = JSON.parse(response.body, symbolize_names: true)

      expect(result[:data][:attributes][:word]).to eq('caterwaul')
    end
    end
  end
end
