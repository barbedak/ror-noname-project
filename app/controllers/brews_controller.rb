class BrewsController < ApplicationController
  before_action :set_brew, only: %i[ index show edit update destroy ]

  # GET /brews or /brews.json
  def index
    @brews = Brew.all
    @products = Product.all
    
  end

  # GET /brews/1 or /brews/1.json
  def show
  end

  # GET /brews/new
  def new
    @brew = Brew.new
  end

  # GET /brews/1/edit
  def edit
  end

  # POST /brews or /brews.json
  def create
    @brew = Brew.new(brew_params)

    respond_to do |format|
      if @brew.save
        # format.html { redirect_to brew_url(@brew), notice: "Варка успешно добавлена" }
        format.html { redirect_to brews_path, notice: "Варка успешно добавлена" }
        format.json { render :show, status: :created, location: @brew }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @brew.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brews/1 or /brews/1.json
  def update
    respond_to do |format|
      if @brew.update(brew_params)
        format.html { redirect_to brew_url(@brew), notice: "Варка успешно обновлена" }
        format.json { render :show, status: :ok, location: @brew }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @brew.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brews/1 or /brews/1.json
  def destroy
    @brew.destroy

    respond_to do |format|
      format.html { redirect_to brews_url, notice: "Варка удалена" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brew
      @brew = Brew.find(params[:id])
      @checklist = Checklist.find(@brew.checklist_id) unless @brew.checklist_id.nil?
    end

    # Only allow a list of trusted parameters through.
    def brew_params
      params.require(:brew).permit(:batch, :date, :product_id, :washed, :equipments_id, :checklist_id)
    end
end
