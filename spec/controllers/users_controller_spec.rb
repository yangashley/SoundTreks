require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let (:user) {User.create(provider: "Spotify", uid: "somestring", name: "Ashley")}

  describe "GET #show" do
    it "responds with status code 200" do
      get :show, { id: user.id }
      expect(response).to have_http_status 200
    end
  end
end

