class CompletionsController < ApplicationController
  def create
    todo = current_user.todos.find(params[:todo_id])
    todo.completed_at = Time.current
    todo.save
    redirect_to root_path
  end
end
