module RatingAverageCalculator
   extend self
   

    def average(song)
        song.ratings.average(:score)
    end 
end 

=begin
class SongRatingOrderService
    def initilize(songs)
        @songs = songs
    end

    def sort_by_ratings
        
    end
end


songs = Song.all
@ordered_songs = SongRatingOrderService.new(songs).sort_by_ratings

songs = Song.all
service = SongRatingOrderService.new(songs)
@ordered_songs = service.sort_by_ratings
=end