class TasksController < ApplicationController

  before_filter :authenticate_user!


  def update
    task = current_user.tasks.find_by_id(params[:id])
    task.update!(task_params)
    redirect_to tasks_path
    flash[:notice] = "Task updated"
  end

  def edit
    @task = current_user.tasks.find_by_id(params[:id])
  end

  def create
    @task = current_user.tasks.new( task_params )
    @task.due_at = params[:task][:due_at].to_date unless params[:task][:due_at].blank?
    @task.save
    redirect_to tasks_path
    flash[:notice] = "Task created"
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

  def destroy
    task = current_user.tasks.find_by_id(params[:id])
    task.destroy!
    redirect_to tasks_path
    flash[:notice] = "Task deleted"
  end

  private
    def task_params
      params.require( :task ).permit( :name, :description, :completed )
      
    end

end
