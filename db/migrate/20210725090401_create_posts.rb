class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title,                    null: false
      t.string  :writer,                  null: false
      t.integer :genre_id,                null: false
      t.integer :degree_of_difficult_id,  null: false
      t.text :to_whom,                    null: false
      t.text :overview,                   null: false
      t.references :user,                 null: false, foreign_key: true
      t.timestamps
    end
  end
end
