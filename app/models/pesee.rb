class Pesee < ActiveRecord::Base
  attr_accessible :date, :poids, :user_id
  validates :user_id,presence: true
  belongs_to :user
  default_scope order: 'pesees.created_at DESC'
end
