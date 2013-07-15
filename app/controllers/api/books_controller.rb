class Api::BooksController < ApplicationController
	skip_before_filter :authenticate_user! # we do not need devise authentication here

	def index
    @books = Book.all
    render json: @books
	end

	def show
    @book = Book.find(params[:id])
    render json: @book
	end
end