require File.join(File.dirname(__FILE__), 'base_resource')
  
module My
  class BooksResource < BaseResource
    get '/api/books/:id' do
      @entry = Entry.find(:id)
      'Hi'
    end
    get '/api/books', :provides => [:json] do
      content_type :json
    	@books=Book.all :order=>[:created_at]
      render :rabl, :"api/books"
    end
    get '/books' do
      p settings.static
      slim :books
    end
  end
end