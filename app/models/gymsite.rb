# == Schema Information
#
# Table name: gymsites
#
#  id             :bigint(8)        not null, primary key
#  name           :string
#  legal_id       :string
#  description    :text
#  street_address :string
#  city           :string
#  state          :string
#  country        :string
#  zip            :string
#  phone          :string
#  phone_type     :integer
#  email          :string
#  logo           :string
#  from_date      :date
#  to_date        :date
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Gymsite < ApplicationRecord
  has_many :members
  has_many :users
  has_many :schedules
  has_many :account_periods
  has_many :trainers

end
