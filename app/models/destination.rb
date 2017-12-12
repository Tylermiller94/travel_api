class Destination < ActiveRecord::Base
  has_many :reviews
  validates :country, :city, :presence => true
  scope :country_search, -> (country){ where('country = ?', country)}
  scope :city_search, -> (city){ where('city = ?', city)}
end
