class JobsController < ApplicationController

  def index
  end 

  def show
  end

  def edit
  end

  def update
  end

  def new 
  @job = Jobs.new(title: [:])

  end

  def create
    @job = Jobs.new()
  end

  def destroy
  end

end
