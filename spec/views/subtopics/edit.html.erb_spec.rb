require 'spec_helper'

describe "subtopics/edit" do
  before(:each) do
    @subtopic = assign(:subtopic, stub_model(Subtopic,
      :topic => nil,
      :user => nil,
      :name => "MyString"
    ))
  end

  it "renders the edit subtopic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => subtopics_path(@subtopic), :method => "post" do
      assert_select "input#subtopic_topic", :name => "subtopic[topic]"
      assert_select "input#subtopic_user", :name => "subtopic[user]"
      assert_select "input#subtopic_name", :name => "subtopic[name]"
    end
  end
end
