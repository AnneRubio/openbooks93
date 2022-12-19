class Book < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy # a reservation cannot exist w/o a book
end
