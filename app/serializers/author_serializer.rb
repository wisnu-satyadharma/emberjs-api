class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :books, embed: :ids, include: true
end
