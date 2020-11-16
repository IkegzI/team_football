require 'rails_helper'

RSpec.describe "GameCreates", type: :request do
  describe "should be game create" do
    it "works! (now write some real specs)" do
      post example_complete_indicator_path, params: {player_id: Player.all.sample.id, player_actions: [TypeAction.all.ids.sample]}
      expect(response).to have_http_status(200)
    end
  end
end
