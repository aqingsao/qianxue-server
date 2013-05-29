require File.join(File.dirname(__FILE__), 'base_resource')
  
module My
  class BooksResource < BaseResource
    get '/api/book/:id' do
      @entry = Entry.find(:id)
      render :rabl, :"api/book"
    end
    get '/api/books', :provides => [:json] do
      content_type :json
    	@books=Book.all :order=>[:created_at]
      render :rabl, :"api/books"
    end
    get '/books' do
      slim :books
    end
    get '/book/:id' do
      slim :book
    end
  end
end