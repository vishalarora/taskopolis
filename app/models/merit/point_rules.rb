module Merit
  class PointRules
    include Merit::PointRulesMethods

    def initialize
      # Marking tasks as complete
      score 1, :on => 'task_actions#create' do |task_action|
        task_action.task.complete?
      end

      # Marking tasks as incomplete
      score -1, :on => 'task_actions#create' do |task_action|
        !task_action.task.complete?
      end
    end
  end
end
