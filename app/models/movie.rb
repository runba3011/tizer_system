class Movie < ApplicationRecord
  attr_accessor :is_confirm
  with_options presence: true do
    validates :title 
    validates :link , length: {is: 11}
    validates :single_point , numericality: {only_integer: true , greater_than_or_equal_to: 1 , less_than_or_equal_to: 5 }
  end
  belongs_to :user
end
