class CartItem < ApplicationRecord
	belongs_to :product
	belongs_to :variant, optional: true
	belongs_to :cart

	def total_price
		product.price * quantity
	end
end
