class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer :user_id
      t.integer :photo_id
      t.string :tag_key
      t.string :tag_value

      t.timestamps
    end
  end
end
