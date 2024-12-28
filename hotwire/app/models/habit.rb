class Habit < ApplicationRecord
  belongs_to :user, default: -> { Current.user }
  has_many :tasks

  after_create :create_task_for_today

  private
    def create_task_for_today
      Task.create(user: self.user, habit: self, name: self.name, day: Date.today)
    end
end
