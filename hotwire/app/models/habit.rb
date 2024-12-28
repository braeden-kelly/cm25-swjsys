class Habit < ApplicationRecord
  belongs_to :user, default: -> { Current.user }
end
