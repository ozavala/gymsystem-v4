# == Schema Information
#
# Table name: account_periods
#
#  id             :bigint(8)        not null, primary key
#  from_date      :date
#  to_date        :date
#  period_type_id :bigint(8)
#  gymsite_id     :bigint(8)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class AccountPeriod < ApplicationRecord
  belongs_to :period_type
  belongs_to :gymsite
  has_many :organization_accounts
end
