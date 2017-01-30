require "rails_helper"

RSpec.describe UrlService do
  subject {described_class.new(url)}
  let(:url) { "https://www.farmdrop.com/blog/154851217943/10-of-the-best-food-and-sustainability#dXyMBSFGHscy1YLV.97" }

  describe "#valid?" do
    context "success" do
      it "returns true" do
        expect(subject.valid?).to be_truthy
      end
    end

    context "fail" do
      let(:url) { "" }
      it "returns false" do
        expect(subject.valid?).to be_falsey
      end
    end
  end

  describe "#shorten" do
    it "returns a random url" do
      expect(subject.shorten).to match /(http:\/\/mol.ly\/)\w{8}/
    end
  end

end