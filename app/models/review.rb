class Review < ActiveRecord::Base
  belongs_to :reservation
  belongs_to :guest, :class_name => "User"
  belongs_to :host, :class_name => "User"
  
end
