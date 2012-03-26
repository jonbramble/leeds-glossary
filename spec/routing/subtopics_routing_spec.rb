require "spec_helper"

describe SubtopicsController do
  describe "routing" do

    it "routes to #index" do
      get("/subtopics").should route_to("subtopics#index")
    end

    it "routes to #new" do
      get("/subtopics/new").should route_to("subtopics#new")
    end

    it "routes to #show" do
      get("/subtopics/1").should route_to("subtopics#show", :id => "1")
    end

    it "routes to #edit" do
      get("/subtopics/1/edit").should route_to("subtopics#edit", :id => "1")
    end

    it "routes to #create" do
      post("/subtopics").should route_to("subtopics#create")
    end

    it "routes to #update" do
      put("/subtopics/1").should route_to("subtopics#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/subtopics/1").should route_to("subtopics#destroy", :id => "1")
    end

  end
end
