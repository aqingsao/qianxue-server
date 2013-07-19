class Api::NoteBooksController < ApplicationController
	skip_before_filter :authenticate_user! # we do not need devise authentication here

	def index
    render json: NoteBook.all
	end

	def show
    render json: NoteBook.find(params[:id])
	end

	def my
    render json: NoteBook.all
	end
end