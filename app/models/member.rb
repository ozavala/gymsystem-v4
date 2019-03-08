# == Schema Information
#
# Table name: members
#
#  id               :bigint(8)        not null, primary key
#  email            :string
#  password_digest  :string
#  gymsite_id       :bigint(8)
#  first_name       :string
#  last_name        :string
#  street_address   :string
#  city             :string
#  state            :string
#  zip              :string
#  phone            :string
#  birthday         :date
#  is_active        :boolean
#  avatar           :string
#  notes            :text
#  from_date        :date
#  to_date          :date
#  level            :integer
#  membership_type  :integer
#  membership_price :decimal(, )
#  source           :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Member < ApplicationRecord
  extend Enumerize
  has_one_attached :avatar
  belongs_to :gymsite
  has_many :schedules#, through: :gymsites
  #has_many :training_sessions
  #has_many :billing_accounts
  default_scope {order(id: :asc)}
  scope :active_members, -> {where(is_active: true)}
  scope :inactive_members, -> {where(is_active: false)}

  enumerize :membership_type, in: {:Cortesía => 0, :Semanal => 1, :Mensual => 2, :Anual => 3, :Visita => 4}
  enumerize :level, in: {:Visitante => 0,:Principiante => 1, :Intermedio => 2, :Avanzado => 3, :Profesional => 4}
  enumerize :source, in: {:Facebook => 1, :Instagram => 2, :Presencial => 3, :Sitio_Web => 4, :Referencial =>5}

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true

  validates :password_digest, presence: true, length: {minimum: 6, maximum: 30}
end
