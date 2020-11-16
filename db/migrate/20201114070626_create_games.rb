class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.references :owners, foreign_key: true
      t.references :visitors, foreign_key: true
      t.date :date
      t.integer :amount_owner
      t.integer :amount_visitors
      t.string :result
      t.references :country
      t.references :region
      t.boolean :active

      t.timestamps
    end
  end
end
