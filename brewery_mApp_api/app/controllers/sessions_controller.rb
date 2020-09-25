class SessionsController < ApplicationController
    include CurrentUserConcern 
    #post request
    def create
        user= User
        .find_by(email: params["user"]["email"])
        .try(:authenticate, params["user"]["password"])

        if user
            #this creats the cookie
            session[:user_id] = user.id
            render json: {
                status: :created,
                #for readablility
                logged_in: true,
                #send back user for frontend
                user: user
            }
        else
            #send error on non authentication
            render json: {status: 401}
        end
    end

    def logged_in
        if @current_user
            render json: {
                logged_in: true,
                user: @current_user
            }
        else
            render json: {
                logged_in: false
            }
        end
    end

    def logout
        reset_session
        render json: {status: 200, logged_out: true}
    end

end