require 'rails_helper'

RSpec.describe "JournalPlayer", type: :request do
  describe "GET /journal_player" do
    it "works! (now write some real specs)" do
      post journal_player_index_path, params: {player_id: Player.all.sample.id,
                                               team_id: Team.all.sample.id,
                                               player_actions: [TypeAction.all.sample.id],
                                               game_id: Game.all.sample.id}
      expect(response).to have_http_status(302)
    end
  end
end
