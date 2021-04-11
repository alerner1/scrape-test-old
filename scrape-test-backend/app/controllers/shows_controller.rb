class ShowsController < ApplicationController
  def index
    shows = Show.all
    render json: shows
  end

  def show
    show = Show.find(params[:id])
    if show.sources.length == 0
      show.get_sources
    end
    render json: show
  end
end
