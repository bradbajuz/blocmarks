class AddUserToHotlists < ActiveRecord::Migration
  def change
    add_column :hotlists, :user_id, :integer
    add_index :hotlists, :user_id
  end
end
