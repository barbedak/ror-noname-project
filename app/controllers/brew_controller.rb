class BrewController < ApplicationController

  def new
    @brew = Brew.new
  end

  def create
    Brew.create(brew_params)
    redirect_to brews_path
  end

  def index
    @brew = Brew.new
    @brews = Brew.all
  end

  def destroy
    brew = Brew.find(params[:id])
    brew.destroy
    redirect_to brews_path
  end

  private

  def brew_params
    params.require(:brew).permit(:batch, :date, :semiproduct_series, :semiproduct_name, :special_wash)
  end
end
