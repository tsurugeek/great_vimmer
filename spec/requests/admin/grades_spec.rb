require 'rails_helper'

RSpec.describe "Admin::Grades", type: :request do
  describe "GET /admin/grades" do
    it "works! (now write some real specs)" do
      get admin_grades_path
      expect(response).to have_http_status(200)
    end
  end
end
