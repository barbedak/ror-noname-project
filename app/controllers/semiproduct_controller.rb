class SemiproductController < ApplicationController
  def new
    @semiproduct = Semiproduct.new
  end

  def index
    @semiproduct = Semiproduct.new
    @semiproducts = Semiproduct.all
  end

  def create
    Semiproduct.create(semiproduct_params)
    redirect_to semiproducts_path
  end

  def destroy
    semiproduct = Semiproduct.find(params[:id])
    semiproduct.destroy
    redirect_to semiproducts_path
  end

  private

  def semiproduct_params
    params.require(:semiproduct).permit(:name, :series)
  end
end
