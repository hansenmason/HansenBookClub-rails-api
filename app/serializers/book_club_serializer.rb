class BookClubSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :booklist
end
