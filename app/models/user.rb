class User < ActiveRecord::Base
	has_many :links
	
	def name
	  first_name + " " + last_name
	end
end
