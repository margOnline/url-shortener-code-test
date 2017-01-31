require 'rails_helper'

RSpec.describe UrlController, type: :controller do

  let(:url_service) { double(UrlService) }

  describe "#index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "#shorten" do
    before { allow(UrlService).to receive(:new).with(url) { url_service } }

    context "success" do
      before { allow(url_service).to receive(:valid?) { true } }
      let(:url) { "https://www.farmdrop.com" }

      it "assigns a shortened url" do
        expect(url_service).to receive(:shorten)
        post :shorten, {url: url, format: 'js'}
      end
    end

    context "fail" do
      before { allow(url_service).to receive(:valid?) { false } }
      let(:url) { "" }
      
      it "assigns invalid url message" do
        post :shorten, {url: url, format: 'js'}
        expect(assigns(:response)).to eq({error: "invalid url"})
      end
    end
  end

end
