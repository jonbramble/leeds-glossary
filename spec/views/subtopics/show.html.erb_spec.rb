require 'spec_helper'

describe "subtopics/show" do
  before(:each) do
    @subtopic = assign(:subtopic, stub_model(Subtopic,
      :topic => nil,
      :user => nil,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Name/)
  end
end
