require 'rails_helper'

RSpec.describe "Example", type: :request do
  describe "GET /example/complete_indicator" do
    it "works! (now write some real specs)" do
      get example_last_tem_games_path
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /example/complete_indicator" do
    it "works! (now write some real specs)" do
      get example_complete_indicator_path
      expect(response).to have_http_status(200)
    end
  end

  describe "post /example/complete_indicator" do
    it "works! (now write some real specs)" do
      post example_complete_indicator_path, params: {player_id: Player.all.sample.id, player_actions: [TypeAction.all.ids.sample]}
      expect(response).to have_http_status(200)
    end
  end
end
