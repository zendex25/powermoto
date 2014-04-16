class Voucher < ActiveRecord::Base
	belongs_to :order

	def add_line_items_from_order(order)
		order.name
		order.address
		order.email
		order.line_items.each do |item|
			item.quantity
			item.product.title
			item.product.price
			item.total_price
		end
		order.line_items.map(&:total_price).sum
	end
end