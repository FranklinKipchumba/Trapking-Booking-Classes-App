class Booking < ApplicationRecord
    belongs_to :User
    belongs_to :DanceClass
    has_one :Payment
end
