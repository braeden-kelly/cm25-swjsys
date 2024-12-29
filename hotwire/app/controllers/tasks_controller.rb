class TasksController < ApplicationController
  def complete
    @task = Task.find(params.expect(:id))
    respond_to do |format|
      if @task.update(completed_at: Time.current)
        format.html { redirect_to habits_path, notice: "Task completed." }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def uncomplete
    @task = Task.find(params.expect(:id))
    respond_to do |format|
      if @task.update(completed_at: nil)
        format.html { redirect_to habits_path, notice: "Task uncompleted." }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end
end
