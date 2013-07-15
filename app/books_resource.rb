require File.join(File.dirname(__FILE__), 'base_resource')
  
module My
  class BooksResource < BaseResource
    get '/book/:id/review' do
      slim :book
    end
  end
end