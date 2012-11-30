require 'spec_helper'

describe "Tasks" do
 
	subject { create(:task, description: "This is my task", status: "pending")}
  
  describe "Dashboard page" do
    it "should have a section called 'Tasks'" do
    	visit '/'
    	page.should have_selector('h2', text: "Tasks")
    end

    it "should have a list of tasks" do
    	task1 = subject
    	task2 = subject
    	visit '/'
    	page.should have_content(task1.description)
    	page.should have_content(task1.status)
    	page.should have_content(task2.description)
    	page.should have_content(task2.status)
    end
  end # Dashboard page

  

end #describe Tasks