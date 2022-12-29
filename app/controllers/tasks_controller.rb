class TasksController < ApplicationController
  before_action :find_task, only: [:edit, :update, :destroy, :show]

  def new

  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to root_path
  end

  def edit

  end

  def update
    @task.update(task_params)
    redirect_to root_path
  end

  def destroy
    @task.destroy
    redirect_to root_path
  end

  def show
    
  end

  private
  def task_params
    params.require(:task).permit(:description, :status)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end