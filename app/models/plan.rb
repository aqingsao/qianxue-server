class Plan < ActiveRecord::Base
	after_initialize :default_values

  attr_accessible :due_date, :noteBook_id, :user_id
  belongs_to :user
  belongs_to :noteBook

  def remaining_date
  	due_date - Time.now
  end

  private
    def default_values
      self.due_date ||= 30.days.from_now
    end
end
