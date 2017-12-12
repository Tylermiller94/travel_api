class Destination < ActiveRecord::Base
  has_many :reviews
  validates :country, :city, :presence => true
  scope :search, -> (country){ where('country = ?', country)}
end
