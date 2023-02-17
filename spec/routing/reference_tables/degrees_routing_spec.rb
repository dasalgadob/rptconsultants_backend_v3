require "rails_helper"

RSpec.describe ReferenceTables::DegreesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/reference_tables/degrees").to route_to("reference_tables/degrees#index")
    end

    it "routes to #show" do
      expect(get: "/reference_tables/degrees/1").to route_to("reference_tables/degrees#show", id: "1")
    end

    it "routes to #create" do
      expect(post: "/reference_tables/degrees").to route_to("reference_tables/degrees#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/reference_tables/degrees/1").to route_to("reference_tables/degrees#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/reference_tables/degrees/1").to route_to("reference_tables/degrees#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/reference_tables/degrees/1").to route_to("reference_tables/degrees#destroy", id: "1")
    end
  end
end
