class CreateBookClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :book_clubs do |t|
      t.string :name, null:false
      t.integer :user_id

      t.timestamps
    end
  end
end
