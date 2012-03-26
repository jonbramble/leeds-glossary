require 'spec_helper'

describe "subtopics/new" do
  before(:each) do
    assign(:subtopic, stub_model(Subtopic,
      :topic => nil,
      :user => nil,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new subtopic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => subtopics_path, :method => "post" do
      assert_select "input#subtopic_topic", :name => "subtopic[topic]"
      assert_select "input#subtopic_user", :name => "subtopic[user]"
      assert_select "input#subtopic_name", :name => "subtopic[name]"
    end
  end
end
