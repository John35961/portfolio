class AddMaintenanceModeToSettings < ActiveRecord::Migration[7.0]
  def change
    add_column :settings, :maintenance_mode, :boolean
  end
end
