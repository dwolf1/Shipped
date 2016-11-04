class BoatsController < ApplicationController

  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
    @all_job = Job.all
  end

  def edit
    @boat = Boat.find(params[:id])
  end

  def update
    @boat = Boat.find(params[:id])
		@boat.update(boat_params)

    if @boat.save
      redirect_to boat_path(@boat)
    else
      render edit_boat_path
    end
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
    Boat.delete(params[:id])
  redirect_to url_for(:controller => :boats, :action => :index)
  end

  private
  def boat_params
    params.require(:boat).permit(:avatar,:name, :amount_that_can_be_shipped, :location, :user_id)
  end
end
