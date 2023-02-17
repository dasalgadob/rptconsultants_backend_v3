require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/reference_tables/degrees", type: :request do
  # This should return the minimal set of attributes required to create a valid
  # ReferenceTables::Degree. As you add validations to ReferenceTables::Degree, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    attributes_for(:random_degree)
  end

  let(:invalid_attributes) do
    attributes_for(:random_degree_invalid)
  end

  # This should return the minimal set of values that should be in the headers
  # in order to pass any filters (e.g. authentication) defined in
  # ReferenceTables::DegreesController, or in your router and rack
  # middleware. Be sure to keep this updated too.
  let(:valid_headers) do
    {}
  end

  describe "GET /index" do
    it "renders a successful response" do
      ReferenceTables::Degree.create! valid_attributes
      get reference_tables_degrees_url, headers: valid_headers, as: :json
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      degree = ReferenceTables::Degree.create! valid_attributes
      get reference_tables_degree_url(degree), as: :json
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new ReferenceTables::Degree" do
        expect {
          post reference_tables_degrees_url,
               params: { reference_tables_degree: valid_attributes }, headers: valid_headers, as: :json
        }.to change(ReferenceTables::Degree, :count).by(1)
      end

      it "renders a JSON response with the new reference_tables_degree" do
        post reference_tables_degrees_url,
             params: { reference_tables_degree: valid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:created)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end

    context "with invalid parameters" do
      it "does not create a new ReferenceTables::Degree" do
        expect {
          post reference_tables_degrees_url,
               params: { reference_tables_degree: invalid_attributes }, as: :json
        }.to change(ReferenceTables::Degree, :count).by(0)
      end

      it "renders a JSON response with errors for the new reference_tables_degree" do
        post reference_tables_degrees_url,
             params: { reference_tables_degree: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) do
        attributes_for(:random_degree)
      end

      it "updates the requested reference_tables_degree" do
        degree = ReferenceTables::Degree.create! valid_attributes
        patch reference_tables_degree_url(degree),
              params: { reference_tables_degree: new_attributes }, headers: valid_headers, as: :json
        degree.reload
      end

      it "renders a JSON response with the reference_tables_degree" do
        degree = ReferenceTables::Degree.create! valid_attributes
        patch reference_tables_degree_url(degree),
              params: { reference_tables_degree: new_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end

    context "with invalid parameters" do
      it "renders a JSON response with errors for the reference_tables_degree" do
        degree = ReferenceTables::Degree.create! valid_attributes
        patch reference_tables_degree_url(degree),
              params: { reference_tables_degree: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested reference_tables_degree" do
      degree = ReferenceTables::Degree.create! valid_attributes
      expect {
        delete reference_tables_degree_url(degree), headers: valid_headers, as: :json
      }.to change(ReferenceTables::Degree, :count).by(-1)
    end
  end
end
