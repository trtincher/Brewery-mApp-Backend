class RegistrationsController < ApplicationController
    def create
        user = User.create!(
            email: params['user']['email'],
            password: params['user']['password'],
            #you need this on the backend but not nessisarly on the frontend just have params['user']['password'] again
            password_confirmation: params['user']['password_confirmation']
        )

        if user
            session[:user_id] = user.id
            render json: {
                status: :created,
                user: user
            }
        else
            render json: { status: 500}
        end
    end
end