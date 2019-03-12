class AddBooklistToBookClubs < ActiveRecord::Migration[5.2]
  def change
    add_column :book_clubs, :booklist, :text
  end
end
