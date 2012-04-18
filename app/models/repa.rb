class Repa < ActiveRecord::Base
  attr_accessible :name, :date, :user_id, :aliments_attributes
  belongs_to :user
  has_many :aliments , dependent: :destroy
  accepts_nested_attributes_for :aliments
  
end
