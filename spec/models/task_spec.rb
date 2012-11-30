require 'spec_helper'

describe Task do
	context "creating tasks" do
    before(:each) do
    @task = FactoryGirl.build(:task, description: "This is my task", status: "pending")
    end
    it "should invalid without a description" do
      @task.description = nil
      @task.should_not be_valid
    end

    it "should be invalid without a status" do
      @task.status = nil
      @task.should_not be_valid
    end
  end
  

  context "finding tasks" do
    it "should find task that is active" do
      task1 = FactoryGirl.create(:task, description: "description", status: "active")
      task2 = FactoryGirl.create(:task, description: "description", status: "pending")
      Task.active.should eq [task1]
      Task.active.should_not eq [task2]
    end

    it "should find all tasks" do
      task1 = FactoryGirl.create(:task, description: "description", status: "active")
      task2 = FactoryGirl.create(:task, description: "description", status: "active")
      task3 = FactoryGirl.create(:task, description: "description", status: "active")
      Task.find_all.should eq [task1, task2, task3]
    end
  end

end # describe Task