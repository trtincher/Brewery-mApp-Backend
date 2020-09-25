class User < ApplicationRecord
    has_secure_password
    validates_presence_of :email
    validates_uniqueness_of :email
    # dependent destroy should destroy logs on user distroy
    has_many :logs , dependent: :destroy

    has_many :breweries, through: :rosters 
end
