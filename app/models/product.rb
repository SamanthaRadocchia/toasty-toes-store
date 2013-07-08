class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title
  
  # VERIFY THAT ALL TEXT FIELDS CONTAIN SOMETHING - use presence 
	validates :title, :description, :image_url, presence: true

	# VERIFY THAT PRICE IS VALID NUMBER - use numericality and :greater_than_or_equal_to option a value of 0.01
	validates :price, numericality: {greater_than_or_equal_to: 0.01}

	# VERIFY THAT EACH PRODUCT HAS UNIQUE TITLE - use uniqueness 
	validates :title, uniqueness: true

	# VERIFY THAT URL ENTERED FOR THE IMAGE IS VALID - use format 
	validates :image_url, allow_blank: true, format: { 
		with: %r{\.(gif|jpg|png)\Z}i,
		message: 'must be a URL for GIF, JPG or PNG image.'
	}

end
