module Merit
  class PointRules
    include Merit::PointRulesMethods

    def initialize
      score 1, on: "task_actions#create"
      score -1, on: "task_actions#destroy"
    end
  end
end
