require 'spec_helper'

describe "museum_items/edit" do
  before(:each) do
    @museum_item = assign(:museum_item, stub_model(MuseumItem,
      :name => "MyString",
      :origin => "MyString",
      :description => "MyString",
      :age => "MyString",
      :material => "MyString",
      :technique => "MyString",
      :height => 1.5,
      :width => 1.5,
      :depth => 1.5
    ))
  end

  it "renders the edit museum_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", museum_item_path(@museum_item), "post" do
      assert_select "input#museum_item_name[name=?]", "museum_item[name]"
      assert_select "input#museum_item_origin[name=?]", "museum_item[origin]"
      assert_select "input#museum_item_description[name=?]", "museum_item[description]"
      assert_select "input#museum_item_age[name=?]", "museum_item[age]"
      assert_select "input#museum_item_material[name=?]", "museum_item[material]"
      assert_select "input#museum_item_technique[name=?]", "museum_item[technique]"
      assert_select "input#museum_item_height[name=?]", "museum_item[height]"
      assert_select "input#museum_item_width[name=?]", "museum_item[width]"
      assert_select "input#museum_item_depth[name=?]", "museum_item[depth]"
    end
  end
end