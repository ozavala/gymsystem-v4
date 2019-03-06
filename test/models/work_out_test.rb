# == Schema Information
#
# Table name: work_outs
#
#  id                  :bigint(8)        not null, primary key
#  name                :string
#  description         :text
#  repetions           :integer
#  weight              :decimal(, )
#  distance            :decimal(, )
#  speed               :decimal(, )
#  span                :datetime
#  training_session_id :bigint(8)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'test_helper'

class WorkOutTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
