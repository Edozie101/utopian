class Review < ActiveRecord::Base

  belongs_to :rating_user, class_name:"User"
  belongs_to :rated_user, class_name:"User"
  belongs_to :reviewable, :polymorphic => true
  validates :body, presence: true, allow_blank: false, length:{minimum: 10}
  validates :rating, presence: true, allow_blank: false
end
