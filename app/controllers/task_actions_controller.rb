class TaskActionsController < ApplicationController
  # before_action :set_task, only: [:create, :destroy]

  def index
    @task_actions = TaskAction.all
  end

  def new
    @task_action = TaskAction.new
  end

  def create
    @task_action = TaskAction.new(task_action_params)
    # @task.mark_as_complete
    puts "testing"
  end

  def destroy
    @task.mark_as_incomplete
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_action_params
    params.require(:task_action).permit(:task_id,
                                        :user_id)
  end

end
