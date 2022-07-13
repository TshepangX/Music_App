class YearsController < ApplicationController
    def index
        if params[:start_date].blank? && params[:end_date].blank?
            @songs = Song.all
          else 
            start_date, end_date = params[:start_date].to_date, params[:end_date].to_date
            @songs = Song.where(released: start_date...end_date)
            @songs = @songs.all.sort_by{|song| [RatingAverageCalculator.average(song), song.released]}.reverse
            
        end
      end
    end
