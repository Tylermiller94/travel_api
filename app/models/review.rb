class Review < ActiveRecord::Base
  belongs_to :destination
  validates :author, :content, :presence => true
end
