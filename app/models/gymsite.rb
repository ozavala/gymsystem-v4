class Gymsite < ApplicationRecord
  has_many :members
  has_many :users
end
