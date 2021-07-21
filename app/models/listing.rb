class Listing < ActiveRecord::Base
  has_many :listings, through: :neighborhoods
  
end
