class TasksController < ApplicationController
  
  def index
    @tasks = @user.tasks
  end

  def show
  end
end
