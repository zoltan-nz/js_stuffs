object false

child @posts, object_root: false do
  attributes :id, :title, :excerpt, :body, :date
  node :author do |m|
    m.author_id
  end
end

child @authors, object_root: false do
  attributes :id, :name
end
