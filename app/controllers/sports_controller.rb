class SportsController < ApplicationController
  
  def new
  	@sport = Sport.new
  end

# Show all sports

  def index
    @sports = Sport.all
  end

# Show one sport based on id passed

  def show
    @sport = Sport.find(params[:id])
  end

  def create
  	@sport = Sport.new(sports_params)
    @sport.save
    redirect_to action: "index"
  end

  private

  def sports_params
  	params.require(:sport).permit(:sport)
  end

end
