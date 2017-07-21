class Task < ApplicationRecord
  belongs_to :list
  belongs_to :user
  has_many :task_actions

  validates :description, presence: true

  def mark_as_complete
    self.update(complete: true)
  end

  def mark_as_incomplete
    self.update(complete: false)
  end
end
