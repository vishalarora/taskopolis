class Task < ApplicationRecord
  belongs_to :list
  belongs_to :user

  validates :description, presence: true
  validates :due_date, presence: true
end
