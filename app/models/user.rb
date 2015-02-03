class User < ActiveRecord::Base
  has_many :reviews, :as => :reviewable
  has_many :rated_users, through: :reviews, class_name:"User", foreign_key: :rated_user_id # The users this user has rated
  has_many :rated_by_users, through: :reviews, class_name:"User", foreign_key: :rating_user_id #The users that have rated this other user

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
        user.name = auth['info']['name'] || ""
        user.email = auth['info']['email'] || ""
      end
    end
  end

  validates :email, presence: true, uniqueness: true
  has_secure_password


end
