class AddUserIdToConnections < ActiveRecord::Migration[6.1]
  def change
    add_column :connections, :user_id, :integer, null: false
    add_foreign_key "connections", "users "
  end
end
