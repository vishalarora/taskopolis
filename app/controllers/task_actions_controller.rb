class TaskActionsController < ApplicationController

  def create
    @task_action = TaskAction.new(task_action_params)

    if @task_action.save
      redirect_to :back, notice: "Task action was successfully created."

      if @task_action.action === "mark_complete"
        @task_action.task.mark_complete
      else
        @task_action.task.mark_incomplete
      end

    else
      redirect_to :back, alert: "Oops, something went wrong.  Try that again."
    end
  end

  def destroy
    @task.mark_as_incomplete
  end

  private

  def task_action_params
    params.require(:task_action).permit(:task_id, :user_id, :action)
  end
end
