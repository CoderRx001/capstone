class User < ApplicationRecord
  has_secure_password

  has_many :pantry_item
  has_many :food, :through => :pantry_item 
end
