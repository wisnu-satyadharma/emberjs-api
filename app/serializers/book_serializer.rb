class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :release_year
end
