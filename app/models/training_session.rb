class TrainingSession < ApplicationRecord
  belongs_to :member
  belongs_to :gymsite
  has_many :workouts
end
