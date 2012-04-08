class CreateActivites < ActiveRecord::Migration
  def change
    create_table :activites do |t|
      t.string :genre
      t.integer :duree
      t.integer :calories
      t.integer :user_id
      t.date :date

      t.timestamps
    end
  end
end
