class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :firstname
      t.string :lastname
      t.date :birthday
      t.integer :number
      t.references :position, null: false, foreign_key: true
      t.references :region, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true
      t.references :team, foreign_key: true
      t.date :start_play
      t.date :end_play
      t.boolean :active

      t.timestamps
    end
  end
end
