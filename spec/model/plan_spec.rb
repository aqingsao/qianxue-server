require File.join(File.dirname(__FILE__), "../spec_helper")

describe Plan, "" do
	it	"return -60 when due date is 60 seconds ago" do
		plan = FactoryGirl.create(:plan, due_date: Time.now.ago(60))
		plan.remaining_date.should be_within(1).of(-60)
	end
	it	"return 0 when due date is now" do
		plan = FactoryGirl.create(:plan, :due_date => Time.now)
		plan.remaining_date.should be_within(1).of(0)
	end
	it	"return 60 when due date is 1 day later" do
		plan = FactoryGirl.create(:plan, :due_date => 1.day.from_now)
		plan.remaining_date.should be_within(1).of(1.day.to_int)
	end
end