# require "#{File.dirname(__FILE__)}/spec_helper"
require File.join(File.dirname(__FILE__), "spec_helper")

module My
	class BooksResourceTest < Test::Unit::TestCase
	  include Rack::Test::Methods

	  def app
	    My::BooksResource
	  end

	  def test_should_return_empty_when_there_are_no_books
	    get '/books'
	    assert_equal '[]', last_response.body
	  end
	end
end