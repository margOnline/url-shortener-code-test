require 'rails_helper'

RSpec.describe UrlController, type: :controller do

  describe "#index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "#shorten" do
    it "returns http success" do
      post :shorten
      expect(response).to have_http_status(:success)
    end
  end

end
