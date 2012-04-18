class CreateRepas < ActiveRecord::Migration
  def change
    create_table :repas do |t|
      t.string :name
      t.date :date
      t.integer :user_id

      t.timestamps
    end
  end
end
