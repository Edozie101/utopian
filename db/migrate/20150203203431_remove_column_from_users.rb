class RemoveColumnFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :skills, :string
    add_column :reviews, :reviewable_id, :integer
    add_column :reviews, :reviewable_type, :string
    add_index :reviews, :reviewable_id
    create_table :skills do |t|
      t.string :name
      t.belongs_to :user
      t.timestamps
    end

    create_table :occupations do |t|
      t.string :name
      t.string :location
      t.belongs_to :user
      t.timestamps
    end

  end
end
