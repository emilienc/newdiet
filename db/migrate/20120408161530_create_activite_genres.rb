class CreateActiviteGenres < ActiveRecord::Migration
  def change
    create_table :activite_genres do |t|
      t.string :name

      t.timestamps
    end
  end
end
