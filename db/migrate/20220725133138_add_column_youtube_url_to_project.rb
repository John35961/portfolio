class AddColumnYoutubeUrlToProject < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :youtube_url, :string
  end
end
