require 'spec_helper'

describe "medias/index.html.erb" do
  before(:each) do
    assign(:medias, [
      stub_model(Media,
        :title => "Title",
        :time => 1,
        :description => "Description",
        :mediaType => nil
      ),
      stub_model(Media,
        :title => "Title",
        :time => 1,
        :description => "Description",
        :mediaType => nil
      )
    ])
  end

  it "renders a list of medias" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
