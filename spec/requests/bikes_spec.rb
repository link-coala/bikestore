require 'rails_helper'

RSpec.describe "Bikes", type: :request do
  describe "GET /bikes" do
    it "works! (now write some real specs)" do
      get bikes_path
      expect(response).to have_http_status(200)
    end
  end
end
