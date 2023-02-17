require "rails_helper"

RSpec.describe ReferenceTables::RoleLevelsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/reference_tables/role_levels").to route_to("reference_tables/role_levels#index")
    end

    it "routes to #show" do
      expect(get: "/reference_tables/role_levels/1").to route_to("reference_tables/role_levels#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/reference_tables/role_levels").to route_to("reference_tables/role_levels#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/reference_tables/role_levels/1").to route_to("reference_tables/role_levels#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/reference_tables/role_levels/1").to route_to("reference_tables/role_levels#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/reference_tables/role_levels/1").to route_to("reference_tables/role_levels#destroy", id: "1")
    end
  end
end
