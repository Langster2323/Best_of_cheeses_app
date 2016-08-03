class FavoritesController < ApplicationController
  def create
    favorite = Favorite.new(user_id: params[:user_id])
    favorite.save
    redirect_to :back
  end
end
