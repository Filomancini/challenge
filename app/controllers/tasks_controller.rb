class TasksController < ApplicationController
  before_action :set_task, only: [:destroy, :update, :edit, :show]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end
end
