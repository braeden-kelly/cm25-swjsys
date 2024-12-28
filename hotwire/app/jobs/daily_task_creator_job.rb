class DailyTaskCreatorJob < ApplicationJob
  queue_as :default

  def perform(*args)
    today = Date.today
    users = User.includes(:habits).all

    users.each do |u|
      u.habits.each do |h|
        # Get the existing habits for today. Only create a new one if it doesn't exist yet
        existing_tasks_for_today = Task.where(user: u).where(day: today)

        unless existing_tasks_for_today.any? { |t| t.habit == h }
          Task.create(user: u, habit: h, name: h.name, day: today)
        end
      end
    end
  end
end
