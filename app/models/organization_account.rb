class OrganizationAccount < ApplicationRecord
  belongs_to :gymsite
  belongs_to :gl_account
  belongs_to :account_period
end
