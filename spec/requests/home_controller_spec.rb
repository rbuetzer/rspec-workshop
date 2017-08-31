require 'rails_helper'

RSpec.describe HomeController, type: :request do
  describe 'GET #index' do
    subject { get root_path }

    it 'is successful' do
      subject
      expect(response.status).to be 200
    end
  end
end
