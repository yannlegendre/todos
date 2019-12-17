class Todo < ApplicationRecord
  def completed?
    completed_at?
  end

  def mark_as_done!
    update(completed_at: Time.current)
  end

  def mark_as_undone!
    update(completed_at: nil)
  end


end
