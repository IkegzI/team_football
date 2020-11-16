require 'rails_helper'

RSpec.describe InfoController do
  context 'GET #info' do
    it 'views exist' do
      get :index
      expect(response).to be_successful
    end
  end
end

RSpec.describe ExampleController do
  context 'GET ' do
    it 'should be view exist' do
      get :complete_indicator
      expect(response).to be_successful
    end
  end
end