class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def show
  @job = Job.find(params[:id]) 
  end

  def new
  @job = Job.new
  end

  def edit
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to jobs_path
    else
      render :new
  end
end

  def destroy
  end

  private
  def job_params
      params.require(:job).permit(:title, :company, :location, :url, :description)
    end


end