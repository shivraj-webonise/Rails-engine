class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.string :image_url
      t.boolean :published
      t.text :content

      t.timestamps
    end
  end
end
