class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :password, :on => :create
  attr_accessible :email, :password_digest, :password, :password_confirmation,:admin
  has_many :relationships, foreign_key: "follower_id", dependent: :destroy
  has_many :followed_users, through: :relationships, source: :followed
  has_many :reverse_relationships, foreign_key: "followed_id",
                                     class_name:  "Relationship",
                                     dependent:   :destroy
  has_many :followers, through: :reverse_relationships, source: :follower
  has_many :pesees, dependent: :destroy
  has_many :activites, dependent: :destroy
  
  def feed
  end
  
  def following?(other_user)
      relationships.find_by_followed_id(other_user.id)
  end

  def follow!(other_user)
      relationships.create!(followed_id: other_user.id)
  end
  
  def unfollow!(other_user)
      relationships.find_by_followed_id(other_user.id).destroy
  end
  
end
