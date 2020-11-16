class CreateJournalPlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :journal_players do |t|
      t.references :player, null: false
      t.references :team, null: false
      t.references :game, null: false
      t.references :type_action, null: false
      t.boolean :result

      t.timestamps
    end
  end
end