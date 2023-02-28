class Booking < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :event, dependent: :destroy
end
