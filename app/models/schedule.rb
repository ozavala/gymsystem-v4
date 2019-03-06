# == Schema Information
#
# Table name: schedules
#
#  id         :bigint(8)        not null, primary key
#  gymsite_id :bigint(8)
#  trainer_id :bigint(8)
#  name       :string
#  start_time :datetime
#  end_time   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Schedule < ApplicationRecord
  belongs_to :trainer
  belongs_to :gymsite
  default_scope {order(start_time: :asc)}

end
