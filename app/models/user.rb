class User < ActiveRecord::Base
  validates :name, presence: true
  has_many :listings, { foreign_key: 'host_id' }
end