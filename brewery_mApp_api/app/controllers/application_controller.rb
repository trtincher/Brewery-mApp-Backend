class ApplicationController < ActionController::Base
         #this logic is happing somewhere so don't need it here
         skip_before_action :verify_authenticity_token
end
