class TasksController < ApplicationController
  def tasks
  end

  def task
    @task = Task.find(params[:id])
    @completed = @task.completed ? 'Completed' : 'Not Completed'
  end

  def new
    @task = Task.new
    @task.save
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to '/tasks'
  end

  def edit
  end

  def delete
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to '/tasks'
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
