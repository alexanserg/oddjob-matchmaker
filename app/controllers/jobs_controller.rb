class JobsController < ApplicationController

  def index

    @recent_jobs = Job.ten_most_recent
    @jobs = Job.all
    render :index
  end

  def new
    @job = Job.new
    render :new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      flash[:notice] = "Job successfully added!"
      redirect_to jobs_path
    else
      render :new
    end
  end

  def edit
    @job = Job.find(params[:id])
    flash[:notice] = "Job successfully edited!"
    render :edit
  end

  def show
    @job = Job.find(params[:id])
    render :show
  end

  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
      flash[:notice] = "Job successfully updated!"
      redirect_to jobs_path
    else
      render :edit
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    flash[:notice] = "Job successfully deleted!"
    redirect_to jobs_path
  end

  private
    def job_params
      params.require(:job).permit(:description, :pricerange, :timerange, :contact)
    end

end
