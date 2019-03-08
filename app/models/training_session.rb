# == Schema Information
#
# Table name: training_sessions
#
#  id         :bigint(8)        not null, primary key
#  visit_date :date
#  start_time :datetime
#  end_time   :datetime
#  member_id  :bigint(8)
#  gymsite_id :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TrainingSession < ApplicationRecord
  belongs_to :schedule
  has_many :workouts
end
