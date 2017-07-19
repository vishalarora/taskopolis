class Task < ApplicationRecord
  belongs_to :list
  belongs_to :user
  has_many :task_actions

  validates :description, presence: true

end
