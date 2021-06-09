class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.integer :group_id
      t.boolean :accepted
      t.boolean :read

      t.timestamps
    end
  end
end
