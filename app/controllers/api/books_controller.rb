class Api::BooksController < ApplicationController
	skip_before_filter :authenticate_user! # we do not need devise authentication here

	def index
    render json: Book.all
	end

	def show
    render json: Book.find(params[:id])
	end

	def my
    render json: Book.all
	end
end