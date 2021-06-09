class AddGroupImageToGroups < ActiveRecord::Migration[6.1]
  def change
    add_column :groups, :group_image, :string
  end
end
