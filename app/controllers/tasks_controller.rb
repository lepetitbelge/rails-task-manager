class TasksController < ApplicationController
  protect_from_forgery
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    if @task.save
      redirect_to task_path(@task)
    else
      redirect_to task_new_path
    end
  end

  def edit
    @task = Task.find(params[:id])
    # render a form with the existing object
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
    # make changes presistant
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
