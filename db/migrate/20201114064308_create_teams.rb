class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :title
      t.references :region, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true
      t.boolean :active

      t.timestamps
    end
  end
end
