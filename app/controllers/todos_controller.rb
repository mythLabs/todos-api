class TodosController < ApplicationController
    before_action :set_todo, only: [:show, :update, :destroy]

    def index
        @todos = current_user.todos

        json_response(@todos)
    end

    def create
        @todo = current_user.todos.create!(todo_params)
        json_response(@todo, :created)
    end

    def show
        json_response(@todo)
    end

    def update
        @todo.update(todo_params)
        head :no_content
    end

    def destroy
    end

    private

    def set_todo
        @todo = Todo.find(params[:id])
    end

    def todo_params
        # whitelist params
        params.permit(:title, :created_by)
      end

end
