class Payment < ApplicationRecord
    belongs_to :User
    belongs_to :Booking
end
