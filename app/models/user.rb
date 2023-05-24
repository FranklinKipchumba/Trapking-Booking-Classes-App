class User < ApplicationRecord
    has_many :Booking
    has_one :Payment
end
