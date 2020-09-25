Rails.application.config.middleware.insert_before 0, Rack::Cors do
    # allow development block
    allow do
        #localhost may change depending on frontend environment
        origins "http://localhost:3000"
        #adds resources allowed
        #credentials: true allows frontend to communicate with backend very important!
        resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
    end

    #allow production block
    allow do
        #use produciton url here
        origins "http://jdh-authentication-app-react.herokuapp.com"
        #adds resources allowed
        #credentials: true allows frontend to communicate with backend very important!
        resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
    end
end