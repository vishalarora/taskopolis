class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @tasks = current_user.tasks
  end

  def show
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to @task, notice: "Task was successfully created."
    else
      render :new
    end
  end

  def update
    if @task.update(task_params)
      redirect_to @task, notice: "Task was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_url, notice: "Task was successfully destroyed."
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:description,
                                 :due_date,
                                 :complete,
                                 :list_id,
                                 :user_id)
  end

  def mark_as_complete
    @task.complete = true
  end

  def mark_as_incomplete
    @task.complete = false
  end
end
