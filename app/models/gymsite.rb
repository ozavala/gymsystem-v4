class Gymsite < ApplicationRecord
  has_many :members
  has_many :users
  has_many :schedules
  has_many :account_periods
  has_many :trainers

end
