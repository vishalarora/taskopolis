class PastDueTasksJob < ApplicationJob
  PAST_DUE_TASK_PENALTY = 1

  def perform(task:)
    @task = task

    mark_task_as_synced
    decrement_user_points
  end

  private

  attr_reader :task

  def mark_task_as_synced
    task.update!(last_synced_at: DateTime.now)
  end

  def decrement_user_points
    task.user.update!(points: task.user.points - PAST_DUE_TASK_PENALTY)
  end

end
