class TaskActionsController < ApplicationController
before_action :set_task, only: [:create, :destroy, :toggle_complete]

  def create
  end

  def destroy
  end

  private

  def toggle_complete
  end

  def set_task
    @task = task.find.(params[:id])
  end

  def task_action_params
  end
end
