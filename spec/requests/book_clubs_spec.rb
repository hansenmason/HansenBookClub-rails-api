require 'rails_helper'

RSpec.describe "BookClubs", type: :request do
  describe "GET /book_clubs" do
    it "works! (now write some real specs)" do
      get book_clubs_path
      expect(response).to have_http_status(200)
    end
  end
end
