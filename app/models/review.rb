class Review < ActiveRecord::Base

  belongs_to :product

  validates :user_id, presence: true
  validates :product_id, presence: true
  validates :description, presence: true
  validates :rating, :inclusion => 1..5

end
