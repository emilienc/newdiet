class Profil < ActiveRecord::Base
  attr_accessible :birthday, :sexe, :taille, :user_id
  belongs_to :user
end
