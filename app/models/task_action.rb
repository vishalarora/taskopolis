class TaskAction < ApplicationRecord
  enum type_of: [ :complete, :incomplete ]
end
