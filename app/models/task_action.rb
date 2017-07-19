class TaskAction < ApplicationRecord
  belongs_to :task
  enum type_of: [ :complete, :incomplete ]
end
