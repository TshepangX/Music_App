class Genre < ApplicationRecord
    include RatingAverageCalculator
    has_many :songs, dependent: :destroy
    has_many :albums, dependent: :destroy
end
