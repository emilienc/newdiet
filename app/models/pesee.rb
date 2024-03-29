class Pesee < ActiveRecord::Base
  attr_accessible :date, :poids, :user_id
  validates :user_id,presence: true
  belongs_to :user
  default_scope order: 'pesees.date ASC'
  
  
  def self.on(date)
      where("date(date) = ?",date)
  end
  
  
end
