class User < ApplicationRecord
    # dependent destroy should destroy logs on user distroy
    has_many :logs , dependent: :destroy

    has_many :breweries, through: :rosters 
end
