class Subscriber < ActiveRecord::Base


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