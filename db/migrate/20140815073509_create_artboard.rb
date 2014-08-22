class CreateArtboard < ActiveRecord::Migration
  def change
    create_table :artboards do |t|
      t.string :title
      t.integer :author_id
      t.text :image
      t.text :story
      t.timestamps
    end
  end
end
