class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.boolean :correspondence
      t.text :note

      t.timestamps
    end
  end
end
