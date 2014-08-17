class CreatePage < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :page_number
      t.text :text
      t.text :image
      t.text :sound
      t.integer :book_id

      t.timestamps
    end
  end
end
