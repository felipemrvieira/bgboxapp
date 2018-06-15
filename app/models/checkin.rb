class Checkin < ApplicationRecord
    belongs_to :wod
    belongs_to :user
end
