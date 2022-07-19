class DropActiveAdminTables < ActiveRecord::Migration[7.0]
  def change
    drop_table :admin_users
    drop_table :active_admin_comments
  end
end
