class UsersController < ApplicationController

    def new 
    end

    def create
        @user = User.new(user_params)
        if user.save
            session[:user_id] = user.id
            redirect_to '/'
        else 
            redirect_to "/signup"
        end
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password_digest, :password_confirmation)
    end
    # require(:user) or :users




end
