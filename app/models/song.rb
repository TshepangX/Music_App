class Song < ApplicationRecord
    include RatingAverageCalculator
    belongs_to :album
    belongs_to :artist
    belongs_to :genre
    has_many :ratings, dependent: :destroy
    

    
end
