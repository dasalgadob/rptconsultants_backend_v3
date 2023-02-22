require "rails_helper"

RSpec.describe ReferenceTables::SubsectorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/reference_tables/subsectors").to route_to("reference_tables/subsectors#index")
    end

    it "routes to #show" do
      expect(get: "/reference_tables/subsectors/1").to route_to("reference_tables/subsectors#show", id: "1")
    end

    it "routes to #create" do
      expect(post: "/reference_tables/subsectors").to route_to("reference_tables/subsectors#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/reference_tables/subsectors/1").to route_to("reference_tables/subsectors#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/reference_tables/subsectors/1").to route_to("reference_tables/subsectors#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/reference_tables/subsectors/1").to route_to("reference_tables/subsectors#destroy", id: "1")
    end
  end
end
