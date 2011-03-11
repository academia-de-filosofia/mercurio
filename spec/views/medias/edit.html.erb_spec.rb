require 'spec_helper'

describe "medias/edit.html.erb" do
  before(:each) do
    @media = assign(:media, stub_model(Media,
      :title => "MyString",
      :time => 1,
      :description => "MyString",
      :mediaType => nil
    ))
  end

  it "renders the edit media form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => medias_path(@media), :method => "post" do
      assert_select "input#media_title", :name => "media[title]"
      assert_select "input#media_time", :name => "media[time]"
      assert_select "input#media_description", :name => "media[description]"
      assert_select "input#media_mediaType", :name => "media[mediaType]"
    end
  end
end
