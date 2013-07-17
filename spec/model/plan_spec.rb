require File.join(File.dirname(__FILE__), "../spec_helper")

describe Plan, "" do
	it	"return -60 when due date is 60 seconds ago" do
		plan = FactoryGirl.create(:plan, due_date: Time.now.ago(60))
		plan.remaining_date.should <= -60
	end
end