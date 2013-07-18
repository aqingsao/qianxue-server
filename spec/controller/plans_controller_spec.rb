require File.join(File.dirname(__FILE__), "../spec_helper")

describe PlansController do
	include Devise::TestHelpers

	before (:each) do
    @user = FactoryGirl.create(:user, :email => "1@test.com")
		@book = FactoryGirl.create(:book)

		# sign_in @user
	end
  describe "POST #create" do
    it "responds successfully with an HTTP 200 status code" do
      post "/plans", :plans[bookId]=> '', :plans[dueDate]=>Time.now
      expect(response).to be_success
      # expect(response.status).to eq(200)
    end
  end
end