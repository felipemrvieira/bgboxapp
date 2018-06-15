class Wod < ApplicationRecord
    has_many :checkins, dependent: :destroy
    has_many :users, through: :checkins
end
