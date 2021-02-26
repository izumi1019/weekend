class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :title
      t.string :sub_title
      t.text :body
      t.string :image
      t.timestamps
    end
  end
end
