class Post < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.integer :author_id, null: false
      t.integer :category_id, null: false
      t.timestamps null: false
    end
  end
end
