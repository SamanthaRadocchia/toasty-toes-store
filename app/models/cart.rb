class Cart < ActiveRecord::Base
  has_many :line_items, dependent: :destroy

	def add_product(product_id)
		# Active Record Method find_by_product_id() (start with find_by and end by column_name)
		current_item = line_items.find_by_product_id(product_id)
		if current_item
	 		current_item.quantity += 1
		else
			current_item = line_items.build(product_id: product_id)
		end
		current_item
	end

end
