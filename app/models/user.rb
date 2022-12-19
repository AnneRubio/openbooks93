class User < ApplicationRecord
  has_many :books, dependent: :destroy # a book cannot exist w/o a user
  has_many :reservations, dependent: :destroy # a reservation cannot exist w/o a user
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
