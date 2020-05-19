class TasksController < ApplicationController
  before_action :set_user
  
    def index
        @tasks = @user.tasks
    end
    
    def show
    end
    
    def new
        @task = Task.new
    end
    
    def create
    end
    
    private

    def task_params
      params.require(:task).permit(:name, :description)
    end
    
    def set_user
      @user = User.find(params[:user_id])
    end
end
