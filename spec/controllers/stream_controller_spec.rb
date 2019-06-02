require 'rails_helper'

RSpec.describe StreamController do
  describe "POST auth" do
    it "returns 404 for invalid stream key" do
      post :auth, params: { name: "" }
      expect(response).to have_http_status(:not_found)
    end
  end
end
