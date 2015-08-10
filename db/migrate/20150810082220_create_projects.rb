class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :company
      t.string :location
      t.string :supervisior
      t.datetime :date
      t.integer :manday
      t.integer :workingweek
      t.integer :holiday
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
