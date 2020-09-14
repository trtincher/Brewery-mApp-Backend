class Brewery < ApplicationRecord
    # dependent destroy should destroy logs on brewery distroy
    has_many :logs , dependent: :destroy

    has_many :users, through: :logs
end
