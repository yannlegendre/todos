class CompletionsController < ApplicationController
  def create
    todo.update(completed_at: Time.current)
    redirect_to root_path
  end

  private

  def todo
    current_user.todos.find(params[:todo_id])
  end
end
