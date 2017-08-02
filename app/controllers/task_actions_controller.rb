class TaskActionsController < ApplicationController
  before_action :set_task_action, only: [:destroy]

  def create
    @task_action = TaskAction.new(task_action_params)
    task = @task_action.task

    if @task_action.save
      task.update!(complete: true)
      redirect_to :back, notice: "Task action was successfully created."
    else
      redirect_to :back, alert: "Oops, something went wrong.  Try that again."
    end
  end

  def destroy
    @task_action.task.update!(complete: false)
    @task_action.destroy
    redirect_to :back, notice: "Task Action was successfully destroyed."
  end

  private

  def set_task_action
    @task_action = TaskAction.find(params[:id])
  end

  def task_action_params
    params.require(:task_action).permit(:task_id, :user_id,)
  end
end
