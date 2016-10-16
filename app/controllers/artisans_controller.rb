class ArtisansController < ApplicationController

  def show
    @artisan = Artisan.find(params[:id])
    @interventions = @artisan.interventions
  end

end
