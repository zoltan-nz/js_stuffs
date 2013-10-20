class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :excerpt, :body, :date
  has_one :author
end
