class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3, message: "Name must be at least three characters" }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0, message: "Revenue must be at least 0" }
  validates :annual_revenue, numericality: {only_integer: true, message: "Revenue must be an integer."}
  validates :mens_apparel, inclusion: { in: [true, false], message: "Is there Men's Apparel at this store?" }
  validates :womens_apparel, inclusion: { in: [true, false], message: "Is there Women's Apparel at this store?" }

end
