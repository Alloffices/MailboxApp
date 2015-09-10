class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :location
      t.integer :budget

      t.timestamps
    end
  end
end
