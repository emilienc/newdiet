class CreateProfils < ActiveRecord::Migration
  def change
    create_table :profils do |t|
      t.decimal :taille
      t.date :birthday
      t.string :sexe
      t.integer :user_id

      t.timestamps
    end
  end
end
