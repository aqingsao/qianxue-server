class Api::BooksController < ApplicationController
	skip_before_filter :authenticate_user! # we do not need devise authentication here

	  def index
	    @books = Book.all
	    respond_to do |format|
	      format.json { render json: @books }
	    end
  end
end