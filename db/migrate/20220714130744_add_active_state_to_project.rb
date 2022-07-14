class AddActiveStateToProject < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :is_active, :boolean
  end
end
