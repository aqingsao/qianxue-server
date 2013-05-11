require File.join(File.dirname(__FILE__), "spec_helper")

describe "books" do
  def app
    My::BaseResource
  end

  it 'return 404 page when url is not found' do
    get '/unknown_url'
    print last_response
    last_response.should be_not_found
    last_response.body.should == 'not found'
  end
end