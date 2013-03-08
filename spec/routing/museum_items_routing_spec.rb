require "spec_helper"

describe MuseumItemsController do
  describe "routing" do

    it "routes to #index" do
      get("/museum_items").should route_to("museum_items#index")
    end

    it "routes to #new" do
      get("/museum_items/new").should route_to("museum_items#new")
    end

    it "routes to #show" do
      get("/museum_items/1").should route_to("museum_items#show", :id => "1")
    end

    it "routes to #edit" do
      get("/museum_items/1/edit").should route_to("museum_items#edit", :id => "1")
    end

    it "routes to #create" do
      post("/museum_items").should route_to("museum_items#create")
    end

    it "routes to #update" do
      put("/museum_items/1").should route_to("museum_items#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/museum_items/1").should route_to("museum_items#destroy", :id => "1")
    end

  end
end
