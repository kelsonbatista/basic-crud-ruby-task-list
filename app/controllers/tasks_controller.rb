class TasksController < ApplicationController
  def new
  end

  def create
    @task = Task.new(params.require(:task).permit(:description, :status))
    @task.save
    redirect_to root_path
  end
end 