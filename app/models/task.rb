class Task < ApplicationRecord
  belongs_to :list
  belongs_to :user

  validates :description, presence: true
  validates :due_date, presence: true

  after_create :set_last_synced_date

  def self.past_due
    where("due_date < ?", Date.today).where("last_synced_at < ?", Date.today)
  end

  def self.completed
    where(complete: true)
  end

  def set_last_synced_date
    self.update!(last_synced_at: DateTime.now)
  end

end
