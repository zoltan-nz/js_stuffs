class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.references :author, index: true
      t.datetime :date
      t.text :excerpt
      t.text :body

      t.timestamps
    end
  end
end
