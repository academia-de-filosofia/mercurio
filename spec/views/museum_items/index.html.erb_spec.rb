require 'spec_helper'

describe "museum_items/index" do
  before(:each) do
    assign(:museum_items, [
      stub_model(MuseumItem,
        :name => "Name",
        :origin => "Origin",
        :description => "Description",
        :age => "Age",
        :material => "Material",
        :height => 1.5,
        :width => 1.5,
        :depth => 1.5
      ),
      stub_model(MuseumItem,
        :name => "Name",
        :origin => "Origin",
        :description => "Description",
        :age => "Age",
        :material => "Material",
        :height => 1.5,
        :width => 1.5,
        :depth => 1.5
      )
    ])
  end

  it "renders a list of museum_items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Origin".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Age".to_s, :count => 2
    assert_select "tr>td", :text => "Material".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
