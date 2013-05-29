require File.join(File.dirname(__FILE__), 'base_resource')
  
module My
  class BooksResource < BaseResource
    get '/api/book/:id' do
      @book = Book.get(params[:id])
      json @book
    end
    get '/api/books', :provides => [:json] do
    	@books=Book.all :order=>[:created_at]
      json @books
    end
    get '/books' do
      slim :books
    end
    get '/book/:id' do
      slim :book
    end
    get '/book/:id/review' do
      slim :book
    end
  end
end