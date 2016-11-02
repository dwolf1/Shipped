class BoatsController < ApplicationController

  def index
    @message = "These are all of our boats"
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def edit
  end

  def update
  end

  def new
  @boat = Boat.new
  end

  def create
  @boat = Boat.new(boat_params)
  if @boat.save
    redirect_to boat_path(@boat)
  else
    render new_boat_path
  end
end


  def destroy
  end

  private
  def boat_params
    params.require(:boat).permit(:avatar,:name, :amount_that_can_be_shipped, :location, :user_id)
  end

end
