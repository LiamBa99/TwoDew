class TasksController < ApplicationController
    respond_to :html, :xml, :json

    def index
        @tasks = Task.where(list_id: 1)
        respond_with(@tasks)
    end
end
