class AddUserToBookClubs < ActiveRecord::Migration[5.2]
  def change
    add_reference :book_clubs, :user, foreign_key: true
  end
end
