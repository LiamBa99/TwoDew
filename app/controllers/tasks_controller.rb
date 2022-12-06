# frozen_string_literal: true

class TasksController < ApplicationController
  respond_to :html, :xml, :json

  # need to seperate each list and display their name as a button, then display the tasks within the respective list

  def index
    @lists = List.where(user_id: current_user.id)
    
  end
end
