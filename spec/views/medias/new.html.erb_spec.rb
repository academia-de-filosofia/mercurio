require 'spec_helper'

describe "medias/new.html.erb" do
  before(:each) do
    assign(:media, stub_model(Media,
      :title => "MyString",
      :time => 1,
      :description => "MyString",
      :mediaType => nil
    ).as_new_record)
  end

  it "renders new media form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => medias_path, :method => "post" do
      assert_select "input#media_title", :name => "media[title]"
      assert_select "input#media_time", :name => "media[time]"
      assert_select "input#media_description", :name => "media[description]"
      assert_select "input#media_mediaType", :name => "media[mediaType]"
    end
  end
end
