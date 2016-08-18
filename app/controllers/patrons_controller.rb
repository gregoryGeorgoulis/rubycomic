class PatronsController < ApplicationController

	def index
		if current_user
            id = current_user.id
            @user = User.find(id)
            puts "I'm logged in as #{current_user.email}"
            # p @user.comics
        else 
            puts "I'm not logged in"
            redirect_to new_user_session_path
        end
        
	end


    
end
