require 'rails_helper'

RSpec.describe PropertiesController, type: :controller do
  describe 'GET #show' do
    context "with valid id" do
      let(:property) { Property.first }

      it "returns the property json" do
        get :show, params: { id: property.id }
        expect(response.body).to eq(PropertySerializer.new(property).to_json)
      end
    end

    context "with invalid id" do
      it "returns not found status" do
        get :show, params: { id: 1000000000000000000000 }
        expect(response).to have_http_status(:not_found)
      end
    end
  end

  describe 'GET #index' do
    it "returns the properties" do
      get :index
      expect(JSON.parse(response.body).count).to eq(3)
    end
  end
end
