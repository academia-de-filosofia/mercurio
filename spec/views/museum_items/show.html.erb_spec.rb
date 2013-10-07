require 'spec_helper'

describe "museum_items/show" do
  before(:each) do
    @museum_item = assign(:museum_item, stub_model(MuseumItem,
      :name => "Name",
      :origin => "Origin",
      :description => "Description",
      :age => "Age",
      :material => "Material",
      :height => 1.5,
      :width => 1.5,
      :depth => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Origin/)
    rendered.should match(/Description/)
    rendered.should match(/Age/)
    rendered.should match(/Material/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
  end
end
