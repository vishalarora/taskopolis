class TaskActionsController < ApplicationController
before_action :set_task, only: [:create, :destroy, :toggle_complete]

  def new
    @task_action = TaskAction.new
  end

  def create
    @task_action = TaskAction.new(task_action_params)
    if @task_action.type === 'complete'
      mark_as_complete
    elsif @task_action.type === 'incomplete'
      mark_as_incomplete
    end
  end

  def destroy
  end

  private

  def set_task
    @task = task.find.(params[:id])
  end

  def task_action_params
    params.require(:task_action).permit(:type,
                                        :task_id,
                                        :user_id)
  end

  def toggle_complete
  end
end
