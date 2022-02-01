class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store_id, presence: true
  validates :hourly_rate, numericality: { greater_than: 40, less_than: 200, message: "Hourly rate must be greater than $40 and less than $200"}
  validates :hourly_rate, numericality: { is_integer: true, message: "Hourly rate must be an integer." }

end
