class CreateAliments < ActiveRecord::Migration
  def change
    create_table :aliments do |t|
      t.string :name
      t.integer :repa_id
      t.integer :calories

      t.timestamps
    end
  end
end
