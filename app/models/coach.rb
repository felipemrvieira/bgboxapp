class Coach < ApplicationRecord
    has_many :users
    has_many :wod_coaches
    has_many :wods, through: :wod_coaches
end
