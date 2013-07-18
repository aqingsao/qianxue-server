class PlansController < ApplicationController
	def index
	end	

	def show
	end

	def create
		begin
			book = Book.find(params[:plans][:bookId])
		rescue
			logger.warn "Cannot find book with id #{params[:plans][:bookId]}"
			raise "Cannot find book with id #{params[:plans][:bookId]}"
		end
 
 		raise "User already choosed book #{book.id} in plan" if current_user.books.include? book

		@plan = Plan.create(:book_id => book.id, :user_id=>current_user.id, :due_date=>params[:plans][:dueDate])
		redirect_to plans_path
	end
end
