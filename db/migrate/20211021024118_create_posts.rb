class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :blurb
      t.text :blog
      t.string :image_url
      t.string :video_url

      t.timestamps
    end
  end
end
