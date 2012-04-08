class CreateActivites < ActiveRecord::Migration
  def change
    create_table :activites do |t|
      t.integer :activite_genre_id
      t.integer :duree
      t.integer :calories
      t.integer :user_id
      t.date :date

      t.timestamps
    end
  end
end
