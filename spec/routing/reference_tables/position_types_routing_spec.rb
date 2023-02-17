require "rails_helper"

RSpec.describe ReferenceTables::PositionTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/reference_tables/position_types").to route_to("reference_tables/position_types#index")
    end

    it "routes to #show" do
      expect(get: "/reference_tables/position_types/1").to route_to("reference_tables/position_types#show", id: "1")
    end

    it "routes to #create" do
      expect(post: "/reference_tables/position_types").to route_to("reference_tables/position_types#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/reference_tables/position_types/1").to route_to("reference_tables/position_types#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/reference_tables/position_types/1").to route_to("reference_tables/position_types#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/reference_tables/position_types/1").to route_to("reference_tables/position_types#destroy",
                                                                       id: "1")
    end
  end
end
