class CreatePesees < ActiveRecord::Migration
  def change
    create_table :pesees do |t|
      t.decimal :poids
      t.date :date
      t.integer :user_id

      t.timestamps
    end
  end
end
