class SessionsController < ApplicationController
    def destroy
        session.delete :user_id
        head :no_content
    end

    def create 
        user = User.find_by(username: params[:username])
        session[:user_id] = user.id
        render json: user
    end
end
