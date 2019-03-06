# == Schema Information
#
# Table name: period_types
#
#  id               :bigint(8)        not null, primary key
#  period_type_code :string
#  description      :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class PeriodTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
