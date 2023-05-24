class DanceClass < ApplicationRecord
    has_many :Booking
    has_many :Schedule
end
