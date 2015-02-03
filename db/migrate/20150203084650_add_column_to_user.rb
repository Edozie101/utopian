class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :picture, :binary
    add_column :users, :dob, :date
    add_column :users, :occupation, :string
    add_column :users, :location, :string
    
  end
end
