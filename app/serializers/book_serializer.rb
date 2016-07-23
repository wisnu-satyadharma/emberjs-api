class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :release_year
  belongs_to :author, embed: :ids, include: true
  belongs_to :library, embed: :ids, include: true
end
