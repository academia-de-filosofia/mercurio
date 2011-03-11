require 'spec_helper'

describe "medias/show.html.erb" do
  before(:each) do
    @media = assign(:media, stub_model(Media,
      :title => "Title",
      :time => 1,
      :description => "Description",
      :mediaType => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
