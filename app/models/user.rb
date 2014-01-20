class User < ActiveRecord::Base
	#Method to fetch users by provider and uid. If none present, one will be created to match the information.
	#This code applies to all other providers. no need to change

	def self.from_omniauth(auth)
	    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
	end
  
	def self.create_from_omniauth(auth)
	    create! do |user|
	      user.provider = auth["provider"]
	      user.uid = auth["uid"]
	      user.name = auth["info"]["nickname"]
	    end
	end
end
