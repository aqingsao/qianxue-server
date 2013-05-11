require File.join(File.dirname(__FILE__), 'base_resource')

require File.join(File.dirname(__FILE__), '../model/book')
  
module My
  class BooksResource < BaseResource
    get '/books/:id' do
      @entry = Entry.find(:id)
      'Hi'
    end
    get '/books' do
    	@books=Book.all :order=>[:created_at]
    	"books"
    end
  end
end