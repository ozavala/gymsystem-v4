class AccountPeriod < ApplicationRecord
  belongs_to :period_type
  belongs_to :gymsite
end
