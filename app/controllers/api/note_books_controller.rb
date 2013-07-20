class Api::NoteBooksController < ApplicationController
	skip_before_filter :authenticate_user! # we do not need devise authentication here

	def index
    render json: NoteBook.all.as_json(:include=> [:notes=>{:only=>["id"]}])
	end

	def show
    render json: NoteBook.find(params[:id]).as_json(:include=> [:notes=>{:only=>["id"]}])
	end
end