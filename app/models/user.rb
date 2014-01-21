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
	      	user.oauth_token = auth["credentials"]["token"]
			user.oauth_secret = auth["credentials"]["secret"]
			user.save!
			user
	    end
	end

	#access twitter api through users' credentials
	def twitter
		if provider == "twitter"
		    @twitter ||= Twitter::Client.new(oauth_token: oauth_token, oauth_token_secret: oauth_secret)
		end
	end

end
