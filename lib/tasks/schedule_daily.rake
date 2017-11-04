namespace :schedule_daily do
  desc "This task penalizes users for late tasks"
  task past_due_tasks: :environment do
    Task.past_due.each do |task|
      PastDueTasksJob.perform_later(task: task)
    end
  end
end
