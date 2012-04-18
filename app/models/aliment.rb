class Aliment < ActiveRecord::Base
  attr_accessible :calories, :name, :repa_id
  belongs_to :repa
end
