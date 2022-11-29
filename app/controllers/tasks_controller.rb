class TasksController < ApplicationController
    respond_to :html, :xml, :json

    # need to seperate each list and display their name as a button, then display the tasks within the respective list

    def index
        @lists = List.where(user_id: current_user.id)
        @list_array = []
        @lists.each do |list|
            @list_array.push(list.id)
        end
        @tasks = Task.where(list_id: 1)
        respond_with(@tasks)
    end
end
