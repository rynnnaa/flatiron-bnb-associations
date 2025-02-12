class User < ActiveRecord::Base
  validates :name, presence: true
  has_many :reservations, :foreign_key => 'guest_id', through: :listings
  has_many :listings, :foreign_key => 'host_id' 
  has_many :reviews, :foreign_key => 'guest_id'
  has_many :trips, :class_name => :Reservation, :foreign_key => 'guest_id'
end