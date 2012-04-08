class Activite < ActiveRecord::Base
  attr_accessible :calories, :date, :duree, :genre, :user_id
  belongs_to :user
end
