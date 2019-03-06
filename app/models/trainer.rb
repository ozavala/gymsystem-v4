# == Schema Information
#
# Table name: trainers
#
#  id         :bigint(8)        not null, primary key
#  first_name :string
#  last_name  :string
#  skill      :integer
#  note       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  email      :string
#  gymsite_id :bigint(8)
#

class Trainer < ApplicationRecord
  has_many :schedules
  belongs_to :gymsite
end
