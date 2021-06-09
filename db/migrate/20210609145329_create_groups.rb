class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :group_name
      t.string :group_about
      t.string :group_location
      t.string :group_time
      t.boolean :open
      t.integer :game_id
      t.integer :user_id

      t.timestamps
    end
  end
end
