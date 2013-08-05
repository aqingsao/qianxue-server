class Api::NoteBooksController < ApplicationController
	skip_before_filter :authenticate_user! # we do not need devise authentication here

	def index
		render json: current_user.noteBooks, :methods => :notesCount
    # render json: NoteBook.all.as_json(:include=> [:notes=>{:only=>["id"]}])
	end

	def show
    render json: NoteBook.find(params[:id]).as_json(:include=> [:notes=>{:only=>["id"]}])
	end

	def create
		logger.info "current user #{current_user}"
		noteBook = NoteBook.create({:name=>params[:noteBook][:name], :description=> params[:noteBook][:description], :user_id=>current_user.id})
		render json: noteBook
	end
end