class Task < ApplicationRecord
  belongs_to :user
  belongs_to :habit

  broadcasts_refreshes
end
