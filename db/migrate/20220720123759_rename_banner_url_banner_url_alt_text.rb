class RenameBannerUrlBannerUrlAltText < ActiveRecord::Migration[7.0]
  def change
    rename_column :projects, :banner_url, :banner_remote_url
    rename_column :projects, :banner_url_alt_text, :banner_alt_text
  end
end
