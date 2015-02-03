class ChangeReviews < ActiveRecord::Migration
  def change
    change_table :reviews do |t|
      t.belongs_to :rated_user
      t.belongs_to :rating_user
    end
  end
end
