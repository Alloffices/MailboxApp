class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :location, :string
    add_column :users, :rate, :integer
    add_column :users, :skill, :string
  end
end
