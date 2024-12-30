class TasksController < ApplicationController
  def complete
    @task = Task.find(params.expect(:id))
    respond_to do |format|
      if @task.update(completed_at: Time.current)
        format.html { redirect_to habits_path }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def uncomplete
    @task = Task.find(params.expect(:id))
    respond_to do |format|
      if @task.update(completed_at: nil)
        format.html { redirect_to habits_path }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end
end
