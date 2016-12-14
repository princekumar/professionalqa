class Subscriber < ActiveRecord::Base
attr_accesssible :subemail, :post
belongs_to :post

validates :subemail, 
			presence: true,
			uniqueness: true,
			format: {
			  		with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i 
			  	}

	def to_s 
  		"#{subemail}"
  	end
end