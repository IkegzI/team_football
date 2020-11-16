class CreateTypeActions < ActiveRecord::Migration[6.0]
  def change
    create_table :type_actions do |t|
      t.string :title

      t.timestamps
    end
  end
end
