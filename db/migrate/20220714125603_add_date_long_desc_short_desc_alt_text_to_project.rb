class AddDateLongDescShortDescAltTextToProject < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :release_date, :date
    add_column :projects, :short_description, :text
    add_column :projects, :long_description, :text
    add_column :projects, :banner_url_alt_text, :string
  end
end
