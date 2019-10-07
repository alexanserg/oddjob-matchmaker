class WorkersController < ApplicationController

  def index

    @recent_workers = Worker.ten_most_recent
    @workers = Worker.all
    render :index
  end

  def new
    @worker = Worker.new
    render :new
  end

  def create
    @worker = Worker.new(worker_params)
    if @worker.save
      flash[:notice] = "Worker successfully added!"
      redirect_to workers_path
    else
      render :new
    end
  end

  def edit
    @worker = Worker.find(params[:id])
    flash[:notice] = "Worker successfully edited!"
    render :edit
  end

  def show
    @worker = Worker.find(params[:id])
    render :show
  end

  def update
    @worker = Worker.find(params[:id])
    if @worker.update(worker_params)
      flash[:notice] = "Worker successfully updated!"
      redirect_to workers_path
    else
      render :edit
    end
  end

  def destroy
    @worker = Worker.find(params[:id])
    @worker.destroy
    flash[:notice] = "Worker successfully deleted!"
    redirect_to workers_path
  end

  private
    def worker_params
      params.require(:worker).permit(:name, :specialty, :availabilty, :contact)
    end

end
