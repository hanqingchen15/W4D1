class ArtworksController < ApplicationController

  def index
    @artworks = User.all
    render json: @artworks
  end

  def create
    @artwork = User.new(artwork_params)
    if @artwork.save!
      render json: @artwork
    else
      render json: @artwork.errors.full_messages, status: 422
    end
  end

  def show
    @artwork = User.find(params[:id])
    render json: @artwork
  end

  def update
    @artwork = User.find(params[:id])
    if @artwork.update!(artwork_params)
      render json: @artwork
    else
      render json: @artwork.errors.full_messages, status: 422
    end
  end

  private

  def artwork_params
    params.require(:artwork).permit(:title, :image_url, :artist_id)
  end
end
