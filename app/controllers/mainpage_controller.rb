class MainpageController < ApplicationController

  def new

  end

  def index
    @equipments = Equipment.all
    @brews = Brew.all.where(washed: false)
    @products = Product.all
    @serieses = Series.all
  end
end
