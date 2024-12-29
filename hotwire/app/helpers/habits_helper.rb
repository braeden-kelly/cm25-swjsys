module HabitsHelper
  def task_checkbox_path(task)
    if task.completed_at?
      uncomplete_task_path(task)
    else
      complete_task_path(task)
    end
  end
end
