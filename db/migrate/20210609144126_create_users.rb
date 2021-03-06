class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :bio
      t.string :location
      t.string :profile_pic

      t.timestamps
    end
  end
end
