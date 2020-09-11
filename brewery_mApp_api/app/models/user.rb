class User < ApplicationRecord
    has_many :logs

    has_many :breweries, through: :rosters 
end
