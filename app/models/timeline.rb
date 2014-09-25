class Timeline
	include ActiveModel::Model  #this makes it return valid partial_path

	def initialize user
		@user = user
	end

	def shouts
		Shout.where(user_id: shout_user_ids)	
	end
private

	def shout_user_ids
		[@user.id] + @user.followed_user_ids
	end
end
