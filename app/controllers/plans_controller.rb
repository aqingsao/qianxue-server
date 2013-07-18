class PlansController < ApplicationController
	def index
	end	

	def show
	end

	def create
		book = Book.find(params[:plans][:bookId])
		@plan = Plan.create(:book_id => book.id, :user_id=>current_user.id, :due_date=>params[:plans][:dueDate])
		redirect_to plans_path
	end
end
