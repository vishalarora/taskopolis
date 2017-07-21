module TaskActionsHelper
  def type_of_action_when(taskIsComplete)
    if taskIsComplete
      "mark_incomplete"
    else
      "mark_complete"
    end
  end
end
