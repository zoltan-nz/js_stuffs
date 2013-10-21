class PostSerializer < ActiveModel::Serializer

  attributes :id, :title, :excerpt, :body, :date, :author

  def author
    object.author_id
  end


end
