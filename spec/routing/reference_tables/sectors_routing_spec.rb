require "rails_helper"

RSpec.describe ReferenceTables::SectorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/reference_tables/sectors").to route_to("reference_tables/sectors#index")
    end

    it "routes to #show" do
      expect(get: "/reference_tables/sectors/1").to route_to("reference_tables/sectors#show", id: "1")
    end

    it "routes to #create" do
      expect(post: "/reference_tables/sectors").to route_to("reference_tables/sectors#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/reference_tables/sectors/1").to route_to("reference_tables/sectors#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/reference_tables/sectors/1").to route_to("reference_tables/sectors#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/reference_tables/sectors/1").to route_to("reference_tables/sectors#destroy", id: "1")
    end
  end
end
