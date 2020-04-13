class Team < ApplicationRecord
    has_many :projects , dependent: :destroy
    has_many :users

    accept_nasted_attributes_for :user, allow_destroy: true 

end
