class Project < ApplicationRecord
    belongs_to :team
    belongs_to :user

    accept_nasted_attributes_for :team
    
end
