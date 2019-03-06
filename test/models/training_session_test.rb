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

require 'test_helper'

class TrainingSessionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
