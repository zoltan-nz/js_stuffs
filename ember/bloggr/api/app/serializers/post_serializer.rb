class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :excerpt, :body, :date
end
