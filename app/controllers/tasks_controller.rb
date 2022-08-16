class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end
end

private

def task_params
  params.require(:task).permit(:title, :details, :completed)
end
