class JobsController < ApplicationController
# testing miguel
  def index
    @jobs = Job.all
  end 

  def show
  end

  def edit
  end

  def update
  end

  def new 
    @message = "form for jober. after devics sign up that users should be drected to this page"
  @job = Job.new(title: params[:title], origin: params[:origin], destination: params[:destination])
  end

  def create
    @job = Job.new() 
  end


  def destroy
  end

end
