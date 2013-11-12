class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :user_id
      t.string :name
      t.text :description
      t.string :picture
      t.text :tags

      t.timestamps
    end
  end
end
