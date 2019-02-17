class Schedule < ApplicationRecord
  belongs_to :trainer
  belongs_to :gymsite
  default_scope {order(start_time: :asc)}

end
