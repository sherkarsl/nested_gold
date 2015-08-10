class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.datetime :startdate
      t.datetime :enddate
      t.integer :toatalmandays
      t.references :project_category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
