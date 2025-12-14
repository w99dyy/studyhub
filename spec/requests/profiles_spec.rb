require 'rails_helper'

  RSpec.describe "Profile", type: :request do
      let(:user) { FactoryBot.create(:user) }
      before { sign_in user, scope: :user }

      describe "GET /profile/:username" do
      it "shows profile" do
        puts "DEBUG: testing route: #{profile_path(user)}"
        get profile_path(user.username)
        expect(response).to have_http_status(:success)
      end
    end

  # describe "GET /profile/edit" do
  # it "works" do
  #  get edit_profile_path
  # expect(response).to have_http_status(:success)
  # end
  # end

  # describe "patch /profile" do
  #  it "works" do
  #   patch profile_path
  #  expect(response).to have_http_status(:success)
  # end
  # end
end
