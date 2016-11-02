class BoatsController < ApplicationController

  def index
    @boats = Boat.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def new
  @boat = Boat.new(name: params[:name], amount_that_can_be_shipped: params[:amount_that_can_be_shipped], location: params[:location])
  end

  def create
  @boat = Boat.new()
  end


  def destroy
  end

end
