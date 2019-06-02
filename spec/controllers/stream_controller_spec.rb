require 'rails_helper'

RSpec.describe StreamController do
  describe "POST auth" do
    it "returns 404 for invalid stream key" do
      post :auth, params: { name: "" }
      expect(response).to have_http_status(:not_found)
    end

    it "returns 201 when provided with proper stream key" do
      post :auth, params: { name: "jon_xxx1" }
      expect(response).to have_http_status(:created)
    end
  end
end
