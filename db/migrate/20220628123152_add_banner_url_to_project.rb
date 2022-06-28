class AddBannerUrlToProject < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :banner_url, :string
  end
end
