class Activite < ActiveRecord::Base
  attr_accessible :calories, :date, :duree, :activite_genre_id, :user_id
  default_scope order: 'activites.date ASC'
  belongs_to :user
  belongs_to :activite_genre
end
