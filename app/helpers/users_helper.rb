module UsersHelper

  def follow_button user
  	if current_user.following? user
  		#show unfollow button
  		button_to 'Unfollow', user_follow_path(user), method: :delete, :class => "btn"
  	else	
  		button_to 'Follow', user_follow_path(user), :class => "btn"
  	end
  end

end