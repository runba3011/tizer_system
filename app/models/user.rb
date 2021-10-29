class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname
    validates :point
    validates :lank
    validates :experience_point , numericality: {only_integer: true}
  end
  has_many :movies
end
