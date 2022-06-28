class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :project_url
      t.string :github_url

      t.timestamps
    end
  end
end
