class Event < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :category, inclusion: %w"[ people music science politics war nature architecture ]"
  validates :era, inclusion: ["prehistory", "ancient", "post-classical", "early modern", "late modern"]
  validates :name, :era, :category, presence: true
  validates :name, uniqueness: true
end
