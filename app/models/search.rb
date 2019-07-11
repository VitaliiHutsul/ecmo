class Search < ApplicationRecord
	def search_cart

		product = Product.all
		
		
		product = product.where(["price >= ?", min_price]) if min_price.present?
		product = product.where(["price <= ?", max_price]) if max_price.present?

		return product
	end
end
