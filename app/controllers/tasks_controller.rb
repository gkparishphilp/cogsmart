class TasksController < ApplicationController

  before_filter :authenticate_user!


  def edit

  end

  def create
    @task = current_user.tasks.new task_params
    @task.save
    redirect_to tasks_path
  end

  def index
    @tasks = current_user.tasks
  end

  def show
    @tasks = current_user.tasks
  end

  def new
    @task = current_user.tasks.new
  end

  private
    def task_params
      params.require( :task ).permit( :name, :description, :due_at )
    end

end
