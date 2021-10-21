class CreatePostBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :post_boards do |t|
      t.integer :post_id
      t.integer :board_id

      t.timestamps
    end
  end
end
