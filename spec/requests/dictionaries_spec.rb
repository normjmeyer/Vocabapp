require 'rails_helper'

RSpec.describe "Dictionaries", type: :request do
  describe "GET /dictionaries" do
    it "works! (now write some real specs)" do
      get dictionaries_path
      expect(response).to have_http_status(200)
    end
  end
end
