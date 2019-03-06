# == Schema Information
#
# Table name: invoices
#
#  id                 :bigint(8)        not null, primary key
#  authorization_code :string
#  autorization_no    :string
#  transaction_date   :date
#  invoice_date       :date
#  amount             :decimal(20, 2)
#  gymsite_id         :bigint(8)
#  member_id          :bigint(8)
#  invoice_status     :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Invoice < ApplicationRecord
  has_many :invoice_items
  has_many :taxes_due
end
