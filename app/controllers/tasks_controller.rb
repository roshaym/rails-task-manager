class TasksController < ApplicationController
  # before_action :set_task, only: []
  
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
    @task = Task.create(params)
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to task_path(@task)
  end

  private

  def pet_params
    params.required(:title, :details)
  end

end
