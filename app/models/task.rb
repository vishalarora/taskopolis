class Task < ApplicationRecord
  belongs_to :list
  belongs_to :user

  validates :description, presence: true

  after_create do
    update_attribute :point_value, 1
  end

end
