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
    @job = Job.new(title: params[:title], origin: params[:origin], destination: params[:destination])
  end

  def create
        @job = Job.new()
  end

  def destroy
  end

end
