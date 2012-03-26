require 'spec_helper'

describe "subtopics/index" do
  before(:each) do
    assign(:subtopics, [
      stub_model(Subtopic,
        :topic => nil,
        :user => nil,
        :name => "Name"
      ),
      stub_model(Subtopic,
        :topic => nil,
        :user => nil,
        :name => "Name"
      )
    ])
  end

  it "renders a list of subtopics" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
