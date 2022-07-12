class RatingsController < ApplicationController
  def create
   @song = Song.find(params[:song_id])
   @rating = @song.ratings.create(rating_params)
   redirect_to song_path(@song)

    #if @rating.save
     # redirect_to song_path(@song)
    #else 
     # render :new 
  #end
end

def destroy
  @song = Song.find(params[:song_id])
  @rating = @song.ratings.find(params[:id])
  @rating.destroy
  redirect_to song_path(@song)
end

private
  def rating_params
    params.permit(:score)
  end
end