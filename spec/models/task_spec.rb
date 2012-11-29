require 'spec_helper'

describe Task do

  subject { create(:task, description: "This is my task", status: "pending")}
  
  it "should invalid without a description" do
  	subject.description = nil
  	subject.should_not be_valid
  end

  it "should be invalid without a status" do
  	subject.status = nil
  	subject.should_not be_valid
  end

end # describe Task