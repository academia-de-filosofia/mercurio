require "spec_helper"

describe MediasController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/medias" }.should route_to(:controller => "medias", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/medias/new" }.should route_to(:controller => "medias", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/medias/1" }.should route_to(:controller => "medias", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/medias/1/edit" }.should route_to(:controller => "medias", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/medias" }.should route_to(:controller => "medias", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/medias/1" }.should route_to(:controller => "medias", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/medias/1" }.should route_to(:controller => "medias", :action => "destroy", :id => "1")
    end

  end
end
