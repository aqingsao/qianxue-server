class PlansController < ApplicationController
	def review
	end

	def create
		begin
			noteBook = NoteBook.find(params[:plans][:noteBook_id])
		rescue
			logger.warn "Cannot find noteBook with id #{params[:plans][:noteBook_id]}"
			raise "Cannot find noteBook with id #{params[:plans][:noteBook]}"
		end
 
 		raise "User already choosed noteBook #{noteBook.id} in plan" if current_user.noteBooks.include? noteBook

		@plan = Plan.create(:noteBook_id => noteBook.id, :user_id=>current_user.id, :due_date=>params[:plans][:due_date])
		redirect_to plans_path
	end
end
