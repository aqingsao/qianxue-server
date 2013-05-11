require File.join(File.dirname(__FILE__), 'base_resource')
  
module My
  class BooksResource < BaseResource
    get '/api/books/:id' do
      @entry = Entry.find(:id)
      'Hi'
    end
    get '/api/books' do
    	@books=Book.all :order=>[:created_at]
        'books'
    end
  end
end