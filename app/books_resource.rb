
require File.join(File.dirname(__FILE__), '../model/book')
  
module Sinatra
	module BooksResource
	  def self.registered(app)
		app.get '/books' do
		  @books=Book.all :order=>[:created_at]
		  "books"
		end
		# get '/' do
		#   @books=Book.all :order=>[:created_at]
		#   "books"
		# end
		# get '/books/:id' do
		#   '/books/$params[:id]'
		#   json []
		# end
	  end
	end
	register BooksResource
end
