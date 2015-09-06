class Users::RegistrationsController < Devise::RegistrationsController
  	def after_sign_in_path_for(users)
	  	create_seat_path
  	end

end



