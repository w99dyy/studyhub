require 'rails_helper'

RSpec.describe "Profile", type: :request do
  describe "GET /profile" do
    it "works" do
      get profile_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /profile/edit" do
    it "works" do
      get edit_profile_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "patch /profile" do
    it "works" do
      patch profile_path
      expect(response).to have_http_status(:success)
    end
  end
end
