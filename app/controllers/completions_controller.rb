class CompletionsController < ApplicationController
  def create
    todo.mark_as_done!
    redirect_to root_path
  end

  private

  def todo
    current_user.todos.find(params[:todo_id])
  end
end
