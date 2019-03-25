class Review < ActiveRecord::Base

<<<<<<< HEAD
  belongs_to :products
=======
  belongs_to :product
>>>>>>> feature/product-ratings

  validates :user_id, presence: true
  validates :product_id, presence: true
  validates :description, presence: true
  validates :rating, :inclusion => 1..5

end
