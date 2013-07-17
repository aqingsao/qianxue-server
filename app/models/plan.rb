class Plan < ActiveRecord::Base
  attr_accessible :due_date, :book_id, :user_id
  belongs_to :user
  belongs_to :book
end
