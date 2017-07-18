class TaskActionsController < ApplicationController
before_action :set_task, only: [:create, :destroy, :toggle_complete]

  def new
    @task_action = TaskAction.new
  end

  def create
    @task_action = TaskAction.new(task_action_params)
  end

  def destroy
  end

  private

  def set_task
    @task = task.find.(params[:id])
  end

  def task_action_params
    params.require(:task_action).permit(:description)
  end

  def toggle_complete
  end
end
