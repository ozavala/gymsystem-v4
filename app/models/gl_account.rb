# == Schema Information
#
# Table name: gl_accounts
#
#  id              :bigint(8)        not null, primary key
#  acc_code        :string
#  acc_parent_code :string
#  name            :string
#  description     :string
#  account_type_id :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class GlAccount < ApplicationRecord
  extend Enumerize
  paginates_per 25

  belongs_to :account_type
  has_many :organization_accounts
  has_many :billing_accounts

  default_scope {order(acc_code: :asc)}

  enumerize :account_type_id, in: {Activo: 1, Pasivo: 2, Capital: 3, Ingreso: 4, Gasto: 5}

  validates :account_type_id, presence: true
  validates :acc_code, presence: true, uniqueness: true
  validates :acc_parent_code, presence: true
  validates :name, length: { minimum: 5, maximum: 30}, presence: true
end
