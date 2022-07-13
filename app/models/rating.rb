class Rating < ApplicationRecord
    include RatingAverageCalculator
    belongs_to :song 
   
end
