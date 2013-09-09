class CreateBackofficeTasks < ActiveRecord::Migration
  def change
    create_table :backoffice_tasks do |t|
      t.string :description
      t.boolean :done

      t.timestamps
    end
  end
end
