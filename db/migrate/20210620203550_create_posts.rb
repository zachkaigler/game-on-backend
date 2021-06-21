class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :content
      t.string :mood
      t.string :date
      t.string :group_id
      t.string :user_id

      t.timestamps
    end
  end
end
