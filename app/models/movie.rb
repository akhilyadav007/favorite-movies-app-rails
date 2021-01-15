class Movie < ApplicationRecord
  validates :name, presence: true,  length: { maximum: 80 }
  validates :geners, presence: true
    validates :year, presence: true, length:{ minimum: 4, maximum: 4 }
    validates :director, length: { maximum: 60 }
    validates :main_star, length: { maximum: 60 }
    validates :description, length: { maximum: 400}
end
