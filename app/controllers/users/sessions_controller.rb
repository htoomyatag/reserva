class Users::SessionsController < Devise::SessionsController
  	def after_sign_in_path_for(users)
		create_seat_path
	end

end
