class SeriesController < ApplicationController

  def new
    @series = Series.new
  end

  def create
    Series.create(series_params)
    redirect_to serieses_path
  end

  def index
    @series = Series.new
    @serieses = Series.all
  end

  def destroy
    series = Series.find(params[:id])
    series.destroy
    redirect_to serieses_path
  end

  private
  def series_params
    params.require(:series).permit(:name)
  end
end
