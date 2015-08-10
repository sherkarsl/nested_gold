class CreateProjectCategories < ActiveRecord::Migration
  def change
    create_table :project_categories do |t|
      t.string :description
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
