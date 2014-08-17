class CreateBook < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :author_id

      t.timestamps
    end
  end
end
