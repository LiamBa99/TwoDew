# frozen_string_literal: true

class TasksController < ApplicationController
  respond_to :html, :xml, :json

  # need to seperate each list and display their name as a button, then display the tasks within the respective list

  def index
    @lists = List.where(user_id: current_user.id)
  end

  def new
    @task = Task.new
  end


  def create 
    @task = Task.new(task_params)

    if @task.save
      redirect_to :tasks
    else
      render :new, status: :unprocessable_entity
    end

  end

  private
    def task_params
      params.require(:task).permit(:title,:list_id,:description,:due_date)
    end
end
