class JobtitleController < ApplicationController
  def new
    @jobtitle = Jobtitle.new
  end
  
  def create
    Jobtitle.create(jobtitle_params)
    redirect_to '/jobtitle'
  end

  def index
    @jobtitle = Jobtitle.new
    @jobtitles = Jobtitle.all
  end

  def destroy
    @jobtitle = Jobtitle.find(params[:id])
    @jobtitle.destroy
    redirect_to '/jobtitle', notice: 'Должность удалена'
  end

  private

  def jobtitle_params
    params.require(:jobtitle).permit(:title)
  end
end
