class Wod < ApplicationRecord
    has_many :checkins
    has_many :users, through: :checkins
    has_many :wod_coaches
    has_many :coaches, through: :wod_coaches
end
