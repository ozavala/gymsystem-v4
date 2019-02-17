class Trainer < ApplicationRecord
  has_many :schedules
  belongs_to :gymsite
end
