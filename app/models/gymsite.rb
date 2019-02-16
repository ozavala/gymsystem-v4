class Gymsite < ApplicationRecord
  has_many :members
  has_many :users
  has_many :schedules
  
end
